import sys

bash_build_cmd = '''
python3 generate-asm.py {} {} > test.f{}.b{}.s
cp test.f{}.b{}.s asm.s
make elf
'''

bash_runtime_cmd = '''
./target > runtime.output.f{}.b{}.{}
echo -e "f{}.b{}/{}: Running front sdiv {}, back sdiv {} at times {}: Easy report: \c"
tail -1 runtime.output.f{}.b{}.{}
'''

max_sdiv_cnt = int(sys.argv[1])
max_sdiv_cnt_back = int(sys.argv[2])
each_run_time = int(sys.argv[3])
output_str = ''
for cur_sdiv in range(max_sdiv_cnt + 1):
    for cur_backsdiv in range(max_sdiv_cnt_back + 1):
        output_str += bash_build_cmd.format(cur_sdiv, cur_backsdiv, cur_sdiv, cur_backsdiv, cur_sdiv, cur_backsdiv)
        for run_time in range(each_run_time):
            output_str += bash_runtime_cmd.format(cur_sdiv, cur_backsdiv, run_time, cur_sdiv, cur_backsdiv, run_time, cur_sdiv, cur_backsdiv, run_time, cur_sdiv, cur_backsdiv, run_time)

print(output_str)