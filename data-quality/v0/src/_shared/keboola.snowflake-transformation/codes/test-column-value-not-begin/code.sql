// Tests whether TABLE1_COLUMN in TABLE1 begins with VALUE. Fails if yes.
call TEST_VALUE_NOT_BEGIN('TABLE1', 'TABLE1_COLUMN', 'VALUE');

// Store results in table DQ_RESULTS_LOG [WARNING/FAIL]
call LOG_PREVIOUS_TEST_RESULT('WARNING');

// Abort if any FAIL runs
SET ABORT_TRANSFORMATION = (SELECT GET_LATEST_FAILED_MESSAGE());
