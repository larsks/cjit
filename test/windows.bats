load bats_setup

@test "Timeb.h inclusion for clock() in Windows" {
# see https://www.reddit.com/r/C_Programming/comments/1h1g4gc/comment/lzc9fta/
# /sys/timeb.h:132: error: include file 'sec_api/sys/timeb_s.h' not found
      run ${CJIT} test/win_timeb.c
      assert_success
}
