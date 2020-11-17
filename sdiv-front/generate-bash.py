import sys

bash_build_cmd = '''
python3 generate-asm.py {} > test{}.s
cp test{}.s asm.s
make elf
'''

bash_runtime_cmd = '''
./target > runtime.output.{}.{}
echo -e "{}/{}: Running sdiv {} at times {}: Easy report: \c"
tail -1 runtime.output.{}.{}
'''

max_sdiv_cnt = int(sys.argv[1])
each_run_time = int(sys.argv[2])
output_str = ''
for cur_sdiv in range(max_sdiv_cnt + 1):
    output_str += bash_build_cmd.format(cur_sdiv, cur_sdiv, cur_sdiv)
    for run_time in range(each_run_time):
        output_str += bash_runtime_cmd.format(cur_sdiv, run_time, cur_sdiv, run_time, cur_sdiv, run_time, cur_sdiv, run_time)

print(output_str)