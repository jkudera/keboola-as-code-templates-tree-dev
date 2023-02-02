// Tests whether TABLE1_COLUMN in TABLE1 matches with REGEXP. Fails if not.
call TEST_VALUE_REGEXP('TABLE1', 'TABLE1_COLUMN', 'REGEXP');

// Store results in table DQ_RESULTS_LOG [WARNING/FAIL]
call LOG_PREVIOUS_TEST_RESULT('WARNING');

// Abort if any FAIL runs
SET ABORT_TRANSFORMATION = (SELECT GET_LATEST_FAILED_MESSAGE());
