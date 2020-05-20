*** Settings ***
Documentation	Wrapper for Platform regression
Resource	${CURDIR}${/}../../Resources/common_keyword.resource
Variables	${CURDIR}${/}../../Resources/conf.py
Suite Setup	Open Connection And Login
Suite Teardown	Closing Connection
Test Teardown	Set Log Level    ${LogLevel}
Test Template	Run Test Case

*** Test Cases ***
Execute AORREG-6986		AORREG-6986		PASSED:EA:Check for enable and disable of listener socket port		None
		 [tags]		EA

Execute AORREG-26		AORREG-26		PASSED:EA:Processing of Older events		None
		 [tags]		EA

Execute AORREG-7903		AORREG-7903		PASSED:EA:Check EA time converstion during Daylight saving start time		AORREG-7903_7906_7908
		 [tags]		EA

Execute AORREG-7906		AORREG-7906		PASSED:EA:Check EA time converstion during Daylight saving end time plus 1 hour		AORREG-7903_7906_7908
		 [tags]		EA

Execute AORREG-7908		AORREG-7908		PASSED:EA:Check EA time converstion during Daylight saving start time minus 1 hour		AORREG-7903_7906_7908
		 [tags]		EA

Execute AORREG-7904		AORREG-7904		PASSED:EA:Check EA time converstion during Daylight saving start time		None
		 [tags]		EA

Execute AORREG-6715		AORREG-6715		PASSED:EA:Event Forwarder end to end for Netcool		None
		 [tags]		EA

Execute AORREG-1409		AORREG-1409		PASSED:FXA-E2E:Event matched with positive filter NEF HUAWEI_DSLAMIP		None
		 [tags]		FXA-E2E

Execute AORREG-1410		AORREG-1410		PASSED:FXA-E2E:Verify NOKIA_DSLAM_STINGERIP inhibits in Event Manager		None
		 [tags]		FXA-E2E

Execute AORREG-1411		AORREG-1411		PASSED:FXA-E2E:Verify NOKIA_DSLAM_STINGERIP inhibits in Event Manager		None
		 [tags]		FXA-E2E

Execute AORREG-63		AORREG-63		PASSED:FXA-E2E:Event from NEF NOKIA_DSLAM_STINGERIP process successfully		None
		 [tags]		FXA-E2E

Execute AORREG-65		AORREG-65		PASSED:TT:Verify ticket is associated for MBA_EmFmTm		CTP
		 [tags]		TT

Execute AORREG-2936		AORREG-2936		PASSED:OH:E2E Process of Generic event injection to EA for PING		None
		 [tags]		OH

Execute AORREG-646		AORREG-646		PASSED:OH:Verify OH end to end functional components for VT MBA_ERICSSON_3G		None
		 [tags]		OH

Execute AORREG-2937		AORREG-2937		PASSED:OH:E2E Process of Generic event injection to EA for CREARINC		None
		 [tags]		OH

Execute AORREG-2694		AORREG-2694		PASSED:OH:Error when launching the agent (OH)		None
		 [tags]		OH

Execute AORREG-1501		AORREG-1501		PASSED:OH:To check GetData request is successful		None
		 [tags]		OH

Execute AORREG-1500		AORREG-1500		PASSED:OH:To check OH AgentExecution request is successful		None
		 [tags]		OH

Execute AORREG-2318		AORREG-2318		PASSED:EM:Check event has filtered after retention time		None
		 [tags]		EM

Execute AORREG-132		AORREG-132		PASSED:EM:Alarm processing by EM		None
		 [tags]		EM

Execute AORREG-189		AORREG-189		PASSED:EM:Event processing - Verify EOA Table		None
		 [tags]		EM

Execute AORREG-195		AORREG-195		PASSED:EM:Retention functionality - During Clear alarm		None
		 [tags]		EM

Execute AORREG-533		AORREG-533		PASSED:EM:Verify TeMIP reload scenario-1		None
		 [tags]		EM

Execute AORREG-536		AORREG-536		PASSED:EM:Verify TeMIP reload scenario-4		None
		 [tags]		EM

Execute AORREG-2321		AORREG-2321		PASSED:EM:Event has been enriched		None
		 [tags]		EM

Execute AORREG-1582		AORREG-1582		PASSED:EM:Verify E2E Event Processing Prevent alarm duplication		None
		 [tags]		EM

Execute AORREG-1574		AORREG-1574		PASSED:EM:DEFAULT_CRITICAL Alarm processing by EM		None
		 [tags]		EM

Execute AORREG-8050		AORREG-8050		PASSED:EM:Verify inhibition is applied for PCS_EmFmTm		inhibition
		 [tags]		EM

Execute AORREG-8051		AORREG-8051		PASSED:EM:Verify filter is applied for PCS_EmFmTm		filter
		 [tags]		EM

Execute AORREG-8052		AORREG-8052		PASSED:EM:Verify retention is applied for PCS_EmFmTm		retention
		 [tags]		EM

Execute AORREG-8053		AORREG-8053		PASSED:EM:verify invalid Inhibition filters		None
		 [tags]		EM

Execute AORREG-8054		AORREG-8054		PASSED:EM:verify Filter scenario 1		None
		 [tags]		EM

Execute AORREG-8055		AORREG-8055		PASSED:EM:verify Filter scenario 2		None
		 [tags]		EM

Execute AORREG-8056		AORREG-8056		PASSED:EM:verify Filter scenario 3		None
		 [tags]		EM

Execute AORREG-8057		AORREG-8057		PASSED:EM:verify Inhibition scenario 1		None
		 [tags]		EM

Execute AORREG-8058		AORREG-8058		PASSED:EM:verify Inhibition scenario 2		None
		 [tags]		EM

Execute AORREG-8059		AORREG-8059		PASSED:EM:verify Inhibition scenario 3		None
		 [tags]		EM

Execute AORREG-8060		AORREG-8060		PASSED:EM:verify Filter with TEXTO field without regular expresions		None
		 [tags]		EM

Execute AORREG-8061		AORREG-8061		PASSED:EM:verify Inhibition with TEXTO field with out regular expresions		None
		 [tags]		EM

Execute AORREG-8064		AORREG-8064		PASSED:EM:verify Inhibition scenario 4		None
		 [tags]		EM

Execute AORREG-8084		AORREG-8084		PASSED:EM:verify Filter with TEXTO field with regular expresions		None
		 [tags]		EM

Execute AORREG-8211		AORREG-8211		PASSED:EM:Verify filter is applied for TRA_EmFmTm		filter
		 [tags]		EM

Execute AORREG-8149		AORREG-8149		PASSED:EM:Verify retention is applied for IPM_EmFmTm		retention
		 [tags]		EM

Execute AORREG-8186		AORREG-8186		PASSED:EM:Verify filter is applied for FXA_EmFmTm		filter
		 [tags]		EM

Execute AORREG-8173		AORREG-8173		PASSED:EM:Verify filter is applied for VAS_EmFmTm		filter
		 [tags]		EM

Execute AORREG-8189		AORREG-8189		PASSED:TT:Verify CEP gets triggered as per schedule for FXS_EmFmTm		CEP
		 [tags]		TT

Execute AORREG-8213		AORREG-8213		PASSED:EM:Verify retention is applied for TRA_EmFmTm		inhibition
		 [tags]		EM

Execute AORREG-8148		AORREG-8148		PASSED:EM:Verify inhibition is applied for IPM_EmFmTm		inhibition
		 [tags]		EM

Execute AORREG-8185		AORREG-8185		PASSED:EM:Verify inhibition is applied for FXA_EmFmTm		inhibition
		 [tags]		EM

Execute AORREG-1577		AORREG-1577		PASSED:EM:Verify inhibition is applied for MBA_EmFmTm		inhibition
		 [tags]		EM

Execute AORREG-8172		AORREG-8172		PASSED:EM:Verify inhibition is applied for VAS_EmFmTm		inhibition
		 [tags]		EM

Execute AORREG-8198		AORREG-8198		PASSED:EM:Verify inhibition is applied for FXS_EmFmTm		inhibition
		 [tags]		EM

Execute AORREG-8679		AORREG-8679		PASSED:EM:Verify retention is applied for TRA_EmFmTm		retention
		 [tags]		EM

Execute AORREG-8184		AORREG-8184		PASSED:EM:Verify retention is applied for FXA_EmFmTm		retention
		 [tags]		EM

Execute AORREG-8171		AORREG-8171		PASSED:EM:Verify retention is applied for VAS_EmFmTm		retention
		 [tags]		EM

Execute AORREG-8197		AORREG-8197		PASSED:EM:Verify retention is applied for FXS_EmFmTm		retention
		 [tags]		EM

Execute AORREG-1578		AORREG-1578		PASSED:EM:Verify retention is applied for MBA_EmFmTm		retention
		 [tags]		EM

Execute AORREG-16		AORREG-16		PASSED:FM:Active alarm after Clear		None
		 [tags]		FM

Execute AORREG-17		AORREG-17		PASSED:Generic event processing		None
		 [tags]		FM

Execute AORREG-20		AORREG-20		PASSED:FM:Test if the repetition object created gets deleted from the work memory		None
		 [tags]		FM

Execute AORREG-21		AORREG-21		PASSED:FM:Verify Spontaneous alarms are processed		None
		 [tags]		FM

Execute AORREG-32		AORREG-32		PASSED:FM:Generic event processing		None
		 [tags]		FM

Execute AORREG-33		AORREG-33		PASSED:FM:Test the rule Massive rule Marcable Object NO		None
		 [tags]		FM

Execute AORREG-6754		AORREG-6754		PASSED:FM:Active alarm without clear is sent within the persistence time and after persistence time		None
		 [tags]		FM

Execute AORREG-2824		AORREG-2824		PASSED:FM:The FM task cannot be executed because is impacted by a permanent inhibition		None
		 [tags]		FM

Execute AORREG-8249		AORREG-8249		PASSED:FM:Verify massivas is applied for PCS_EmFmTm		massivas
		 [tags]		FM

Execute AORREG-8166		AORREG-8166		PASSED:FM:Verify massivas is applied for VAS_EmFmTm		massivas
		 [tags]		FM

Execute AORREG-8617		AORREG-8617		PASSED:FM:Verify massivas is applied for TRA_EmFmTm		massivas
		 [tags]		FM

Execute AORREG-8192		AORREG-8192		PASSED:FM:Verify massivas is applied for FXS_EmFmTm		massivas
		 [tags]		FM

Execute AORREG-15		AORREG-15		PASSED:FM:Verify massivas is applied for MBA_EmFmTm		massivas
		 [tags]		FM

Execute AORREG-8151		AORREG-8151		PASSED:FM:Verify Persistence Rule Alarm with clear for IPM_EmFmTm		percistancia
		 [tags]		FM

Execute AORREG-10		AORREG-10		PASSED:FM:Verify Persistence Rule Alarm with clear for MBA_EmFmTm		percistancia
		 [tags]		FM

Execute AORREG-8196		AORREG-8196		PASSED:FM:Verify Persistence Rule Alarm with clear for FXS_EmFmTm		percistancia
		 [tags]		FM

Execute AORREG-8183		AORREG-8183		PASSED:FM:Verify Persistence Rule Alarm with clear for FXA_EmFmTm		percistancia
		 [tags]		FM

Execute AORREG-8170		AORREG-8170		PASSED:FM:Verify Persistence Rule Alarm with clear for VAS_EmFmTm		percistancia
		 [tags]		FM

Execute AORREG-8624		AORREG-8624		PASSED:FM:Verify Persistence Rule Alarm with clear for PCS_EmFmTm		percistancia
		 [tags]		FM

Execute AORREG-8625		AORREG-8625		PASSED:FM:Verify Persistence Rule Alarm with clear for TRA_EmFmTm		percistancia
		 [tags]		FM

Execute AORREG-12		AORREG-12		PASSED:FM:Verify short time repetition is applied for MBA_EmFmTm		short_repetition
		 [tags]		FM

Execute AORREG-8167		AORREG-8167		PASSED:FM:Verify short time repetition is applied for VAS_EmFmTm		short_repetition
		 [tags]		FM

Execute AORREG-8154		AORREG-8154		PASSED:FM:Verify short time repetition is applied for IPM_EmFmTm		short_repetition
		 [tags]		FM

Execute AORREG-8619		AORREG-8619		PASSED:FM:Verify short time repetition is applied for PCS_EmFmTm		short_repetition
		 [tags]		FM

Execute AORREG-8618		AORREG-8618		PASSED:FM:Verify short time repetition is applied for TRA_EmFmTm		short_repetition
		 [tags]		FM

Execute AORREG-8180		AORREG-8180		PASSED:FM:Verify short time repetition is applied for FXA_EmFmTm		short_repetition
		 [tags]		FM

Execute AORREG-8193		AORREG-8193		PASSED:FM:Verify short time repetition is applied for FXS_EmFmTm		short_repetition
		 [tags]		FM

Execute AORREG-13		AORREG-13		PASSED:FM:Verify long time repetition is applied for MBA_EmFmTm		long_repetition
		 [tags]		FM

Execute AORREG-8153		AORREG-8153		PASSED:FM:Verify long time repetition is applied for IPM_EmFmTm		long_repetition
		 [tags]		FM

Execute AORREG-8168		AORREG-8168		PASSED:FM:Verify long time repetition is applied for VAS_EmFmTm		long_repetition
		 [tags]		FM

Execute AORREG-8194		AORREG-8194		PASSED:FM:Verify long time repetition is applied for FXS_EmFmTm		long_repetition
		 [tags]		FM

Execute AORREG-8181		AORREG-8181		PASSED:FM:Verify long time repetition is applied for FXA_EmFmTm		long_repetition
		 [tags]		FM

Execute AORREG-8620		AORREG-8620		PASSED:FM:Verify long time repetition is applied for PCS_EmFmTm		long_repetition
		 [tags]		FM

Execute AORREG-8621		AORREG-8621		PASSED:FM:Verify long time repetition is applied for TRA_EmFmTm		long_repetition
		 [tags]		FM

Execute AORREG-8152		AORREG-8152		PASSED:FM:Verify very long time repetition is applied for IPM_EmFmTm		very_long_repetition
		 [tags]		FM

Execute AORREG-14		AORREG-14		PASSED:FM:Verify very long time repetition is applied for MBA_EmFmTm		very_long_repetition
		 [tags]		FM

Execute AORREG-8169		AORREG-8169		PASSED:FM:Verify very long time repetition is applied for VAS_EmFmTm		very_long_repetition
		 [tags]		FM

Execute AORREG-8195		AORREG-8195		PASSED:FM:Verify very long time repetition is applied for FXS_EmFmTm		very_long_repetition
		 [tags]		FM

Execute AORREG-8182		AORREG-8182		PASSED:FM:Verify very long time repetition is applied for FXA_EmFmTm		very_long_repetition
		 [tags]		FM

Execute AORREG-8622		AORREG-8622		PASSED:FM:Verify very long time repetition is applied for PCS_EmFmTm		very_long_repetition
		 [tags]		FM

Execute AORREG-8623		AORREG-8623		PASSED:FM:Verify very long time repetition is applied for TRA_EmFmTm		very_long_repetition
		 [tags]		FM

Execute AORREG-8660		AORREG-8660		PASSED:FM:Verify Group_Of_Alarms for VAS_EmFmTm		grouping_of_alarms
		 [tags]		FM

Execute AORREG-27		AORREG-27		PASSED:FM:Verify Group_Of_Alarms for MBA_EmFmTm		grouping_of_alarms
		 [tags]		FM

Execute AORREG-8658		AORREG-8658		PASSED:FM:Verify Group_Of_Alarms for FXS_EmFmTm		grouping_of_alarms
		 [tags]		FM

Execute AORREG-8662		AORREG-8662		PASSED:FM:Verify Group_Of_Alarms for PCS_EmFmTm		grouping_of_alarms
		 [tags]		FM

Execute AORREG-8663		AORREG-8663		PASSED:FM:Verify Group_Of_Alarms for TRA_EmFmTm		grouping_of_alarms
		 [tags]		FM

Execute AORREG-8659		AORREG-8659		PASSED:FM:Verify Group_Of_Alarms for FXA_EmFmTm		grouping_of_alarms
		 [tags]		FM

Execute AORREG-8661		AORREG-8661		PASSED:FM:Verify Group_Of_Alarms for IPM_EmFmTm		grouping_of_alarms
		 [tags]		FM

Execute AORREG-7686		AORREG-7686		PASSED:NEF-E2E:E2E for NSN_2G NEF		MBA_E2E
		 [tags]		NEF-E2E

Execute AORREG-7687		AORREG-7687		PASSED:NEF-E2E:E2E for NSN_3G NEF		MBA_E2E
		 [tags]		NEF-E2E

Execute AORREG-7678		AORREG-7678		PASSED:NEF-E2E:E2E for HUAWEI_2G NEF		MBA_E2E
		 [tags]		NEF-E2E

Execute AORREG-7689		AORREG-7689		PASSED:NEF-E2E:E2E for ERICSSON_2G NEF		MBA_E2E
		 [tags]		NEF-E2E

Execute AORREG-7690		AORREG-7690		PASSED:NEF-E2E:E2E for ERICSSON_3G NEF		MBA_E2E
		 [tags]		NEF-E2E

Execute AORREG-7676		AORREG-7676		PASSED:NEF-E2E:E2E for HUAWEI_3G NEF		MBA_E2E
		 [tags]		NEF-E2E

Execute AORREG-7677		AORREG-7677		PASSED:NEF-E2E:E2E for HUAWEI_GGSN NEF		PCS_E2E
		 [tags]		NEF-E2E

Execute AORREG-7670		AORREG-7670		PASSED:NEF-E2E:E2E for ERICSSON_AXE NEF		PCS_E2E
		 [tags]		NEF-E2E

Execute AORREG-7671		AORREG-7671		PASSED:NEF-E2E:E2E for ERICSSON_EPC_EPG NEF		PCS_E2E
		 [tags]		NEF-E2E

Execute AORREG-7673		AORREG-7673		PASSED:NEF-E2E:E2E for ERICSSON_EPC_MME NEF		PCS_E2E
		 [tags]		NEF-E2E

Execute AORREG-7672		AORREG-7672		PASSED:NEF-E2E:E2E for ERICSSON_MGW_C NEF		PCS_E2E
		 [tags]		NEF-E2E

Execute AORREG-7683		AORREG-7683		PASSED:NEF-E2E:E2E for HUAWEI_CG NEF		PCS_E2E
		 [tags]		NEF-E2E

Execute AORREG-7684		AORREG-7684		PASSED:NEF-E2E:E2E for HUAWEI_DRA NEF		PCS_E2E
		 [tags]		NEF-E2E

Execute AORREG-1528		AORREG-1528		PASSED:BTP:Event match BTP conditions - Load a BTP using any available method		AORREG-1528_1530_1531_1532
		 [tags]		BTP

Execute AORREG-1530		AORREG-1530		PASSED:BTP:Event match BTP conditions - Force an event during the BTP execution period		AORREG-1528_1530_1531_1532
		 [tags]		BTP

Execute AORREG-1531		AORREG-1531		PASSED:BTP:Event matches BTP conditions - Force an event during the BTP execution period		AORREG-1528_1530_1531_1532
		 [tags]		BTP

Execute AORREG-1532		AORREG-1532		PASSED:BTP:Event match BTP conditions - BTP execution period events do not match any BTP		AORREG-1528_1530_1531_1532
		 [tags]		BTP

Execute AORREG-2763		AORREG-2763		PASSED:BTP:BTP REST_API - insert into T_BTP		AORREG-2763_2766_2767
		 [tags]		BTP

Execute AORREG-2766		AORREG-2766		PASSED:BTP:BTP REST_API - UPDATE into T_BTP		AORREG-2763_2766_2767
		 [tags]		BTP

Execute AORREG-2767		AORREG-2767		PASSED:BTP:BTP REST_API - DELETE from T_BTP		AORREG-2763_2766_2767
		 [tags]		BTP

Execute AORREG-1524		AORREG-1524		PASSED:BTP:BTP CSV file interface - Input Csv file contains a line to insert a BTP with a BTP ID not existing		AORREG-1524_1525_1526_1527
		 [tags]		BTP

Execute AORREG-1525		AORREG-1525		PASSED:BTP:BTP CSV file interface - Input Csv file contains a line to update BTP		AORREG-1524_1525_1526_1527
		 [tags]		BTP

Execute AORREG-1526		AORREG-1526		PASSED:BTP:BTP CSV file interface - Existing BTP deletion		AORREG-1524_1525_1526_1527
		 [tags]		BTP

Execute AORREG-1527		AORREG-1527		PASSED:BTP:BTP CSV file interface - Invalid CSV		AORREG-1524_1525_1526_1527
		 [tags]		BTP

Execute AORREG-1538		AORREG-1538		PASSED:BTP:BTP decission matrix depending upon - APROVAL = 'YES' AND IMPACT = 'YES'		AORREG-1538_1539_1544
		 [tags]		BTP

Execute AORREG-1539		AORREG-1539		PASSED:BTP:BTP decission matrix depending upon - APROVAL = 'YES' AND FORECASTED IMPACT = 'NO'		AORREG-1538_1539_1544
		 [tags]		BTP

Execute AORREG-1544		AORREG-1544		PASSED:BTP:BTP decission matrix depending upon - APROVAL = 'NO' IMPACT = 'YES'		AORREG-AORREG-1538_1539_1544
		 [tags]		BTP

Execute AORREG-2772		AORREG-2772		PASSED:BTP:Ensure BTP window can be shifted before the actual expiry time		AORREG-2772_2773
		 [tags]		BTP

Execute AORREG-2773		AORREG-2773		PASSED:BTP:Ensure BTP window can be shifted after the actual expiry time		AORREG-2772_2773
		 [tags]		BTP

Execute AORREG-2642		AORREG-2642		PASSED:BTP:Correlated alarm with primary service impacted included in BTP and received before BTP start		AORREG-2642_2646_2648_2647
		 [tags]		BTP

Execute AORREG-2646		AORREG-2646		PASSED:BTP:Correlated alarm with secondary service impacted included in BTP and received before BTP start		AORREG-2642_2646_2648_2647
		 [tags]		BTP

Execute AORREG-2648		AORREG-2648		PASSED:BTP:Correlated alarm with multiple services impacted included in BTP and received before BTP start		AORREG-2642_2646_2648_2647
		 [tags]		BTP

Execute AORREG-2647		AORREG-2647		PASSED:BTP:Correlated alarm with service not impacted included in BTP and received before BTP start		AORREG-2642_2646_2648_2647
		 [tags]		BTP

Execute AORREG-2650		AORREG-2650		PASSED:BTP:Correlated alarm with primary service impacted included in BTP and received after BTP start		AORREG-2649_2650_2651_2652
		 [tags]		BTP

Execute AORREG-2651		AORREG-2651		PASSED:BTP:Correlated alarm with secondary service impacted included in BTP and received after BTP start		AORREG-2649_2650_2651_2652
		 [tags]		BTP

Execute AORREG-2649		AORREG-2649		PASSED:BTP:Correlated alarm with multiple services impacted included in BTP and received after BTP start		AORREG-2649_2650_2651_2652
		 [tags]		BTP

Execute AORREG-2652		AORREG-2652		PASSED:BTP:Correlated alarm with service not impacted included in BTP and received after BTP start		AORREG-2649_2650_2651_2652
		 [tags]		BTP

Execute AORREG-2624		AORREG-2624		PASSED:BTP:Correlated alarm with secondary service impacted included in BTP and received after BTP start		AORREG-2623_2624_2625_2626
		 [tags]		BTP

Execute AORREG-2625		AORREG-2625		PASSED:BTP:Correlated alarm with multiple services impacted included in BTP and received after BTP start		AORREG-2623_2624_2625_2626
		 [tags]		BTP

Execute AORREG-2623		AORREG-2623		PASSED:BTP:Correlated alarm with primary service impacted included in BTP and received after BTP start		AORREG-2623_2624_2625_2626
		 [tags]		BTP

Execute AORREG-2626		AORREG-2626		PASSED:BTP:Correlated alarm with service not impacted included in BTP and received after BTP start		AORREG-2623_2624_2625_2626
		 [tags]		BTP

Execute AORREG-2557		AORREG-2557		PASSED:BTP:Correlated alarm with primary service impacted included in BTP and received before BTP start		AORREG-2557_2558_2621_2622
		 [tags]		BTP

Execute AORREG-2558		AORREG-2558		PASSED:BTP:Correlated alarm with secondary service impacted included in BTP and received before BTP start		AORREG-2557_2558_2621_2622
		 [tags]		BTP

Execute AORREG-2621		AORREG-2621		PASSED:BTP:Correlated alarm with multiple services impacted included in BTP and received before BTP start		AORREG-2557_2558_2621_2622
		 [tags]		BTP

Execute AORREG-2622		AORREG-2622		PASSED:BTP:Correlated alarm with service not impacted included in BTP and received before BTP start		AORREG-2557_2558_2621_2622
		 [tags]		BTP

Execute AORREG-1533		AORREG-1533		PASSED:BTP:Timing for matching BTP conditions - 1		AORREG-1533_1537
		 [tags]		BTP

Execute AORREG-1537		AORREG-1537		PASSED:BTP:Timing for matching BTP conditions - 5		AORREG-1533_1537
		 [tags]		BTP

Execute AORREG-1547		AORREG-1547		PASSED:BTP:BTP duration can be extended after event matching BTP conditions- APROVAL = YES & IMPACT = YES		AORREG-1547_1549
		 [tags]		BTP

Execute AORREG-1549		AORREG-1549		PASSED:BTP:BTP duration can be extended after event matching BTP - APROVAL = YES & IMPACT = YES		AORREG-1547_1549
		 [tags]		BTP

Execute AORREG-1735		AORREG-1735		PASSED:BTP:BTP duration can be extended after event matching BTP - Delete the BTP		AORREG-1735_1736
		 [tags]		BTP

Execute AORREG-1736		AORREG-1736		PASSED:BTP:BTP duration can be extended after event matching BTP - Step 6		AORREG-1735_1736
		 [tags]		BTP

Execute AORREG-1737		AORREG-1737		PASSED:BTP:Multiple simultaneous BTPs execution - Step 1		None
		 [tags]		BTP

Execute AORREG-1738		AORREG-1738		PASSED:BTP:BTP's Referential Tickets are not impacted by Clear Event Processes		None
		 [tags]		BTP

Execute AORREG-1742		AORREG-1742		PASSED:BTP:Discard Non Approved BTPs - Step 2		None
		 [tags]		BTP

Execute AORREG-1541		AORREG-1541		PASSED:BTP:Mutiple events matching and not matching a BTP conditions - APROVAL = NO OR IMPACT = NO		AORREG-1541_1747
		 [tags]		BTP

Execute AORREG-1747		AORREG-1747		PASSED:BTP:Mutiple events matching and not matching a BTP conditions - Step 1		AORREG-1541_1747
		 [tags]		BTP

Execute AORREG-1749		AORREG-1749		PASSED:BTP:BTP's Referential Tickets are not impacted by Clear Event Processes		None
		 [tags]		BTP

Execute AORREG-1999		AORREG-1999		PASSED:BTP:BTP detection with special characters		None
		 [tags]		BTP

Execute AORREG-1548		AORREG-1548		PASSED:BTP:BTP duration can be extended after event matching BTP conditions- APROVAL = NO OR IMPACT = NO		AORREG-1548_1734
		 [tags]		BTP

Execute AORREG-1734		AORREG-1734		PASSED:BTP:BTP duration can be extended after event matching BTP conditions		AORREG-1548_1734
		 [tags]		BTP

Execute AORREG-2084		AORREG-2084		PASSED:TT:Verify CEP gets triggered as per schedule for MBA_EmFmTm		CEP
		 [tags]		TT

Execute AORREG-8204		AORREG-8204		PASSED:Agent:Verify planned jobs is running for MBA		Planned_jobs
		 [tags]		Agent

Execute AORREG-8205		AORREG-8205		PASSED:Agent:Verify planned jobs is running for PCS		Planned_jobs
		 [tags]		Agent

Execute AORREG-8161		AORREG-8161		PASSED:Agent:Verify planned jobs is running for VAS		Planned_jobs
		 [tags]		Agent

Execute AORREG-8160		AORREG-8160		PASSED:Agent:Verify planned jobs is running for IPM		Planned_jobs
		 [tags]		Agent

Execute AORREG-8203		AORREG-8203		PASSED:Agent:Verify planned jobs is running for TRA		Planned_jobs
		 [tags]		Agent

Execute AORREG-8187		AORREG-8187		PASSED:Agent:Verify planned jobs is running for FXS		Planned_jobs
		 [tags]		Agent

Execute AORREG-8174		AORREG-8174		PASSED:Agents:Verify planned jobs is running for FXA		Planned_jobs
		 [tags]		Agent

Execute AORREG-1586		AORREG-1586		PASSED:Agent:Verify agent logs created for MBA		Agent_logs
		 [tags]		Agent

Execute AORREG-8207		AORREG-8207		PASSED:Agent:Verify agent logs created for TRA		Agent_logs
		 [tags]		Agent

Execute AORREG-8162		AORREG-8162		PASSED:Agent:Verify agent logs created for VAS		Agent_logs
		 [tags]		Agent

Execute AORREG-8159		AORREG-8159		PASSED:Agent:Verify agent logs created for IPM		Agent_logs
		 [tags]		Agent

Execute AORREG-8206		AORREG-8206		PASSED:Agent:Verify agent logs created for PCS		Agent_logs
		 [tags]		Agent

Execute AORREG-8175		AORREG-8175		PASSED:Agent:Verify agent logs created for FXA		Agent_logs
		 [tags]		Agent

Execute AORREG-8188		AORREG-8188		PASSED:Agent:Verify agent logs created for FXS		Agent_logs
		 [tags]		Agent

Execute AORREG-2847		AORREG-2847		PASSED:TT:Synchronization single ticket with External Server		None
		 [tags]		TT

Execute AORREG-2004		AORREG-2004		PASSED:TT:Synchronization from AOR to customer TroubleTicket -SUCCESS		None
		 [tags]		TT

Execute AORREG-2007		AORREG-2007		PASSED:TT:Synchronization from customer TT system to AOR- SUCCESS		None
		 [tags]		TT

Execute AORREG-5480		AORREG-5480		PASSED:TT:Verification of properties file and xslts		None
		 [tags]		TT

Execute AORREG-5426		AORREG-5426		PASSED:TT:Verification of T_TROUBLETICKET_SUM table by calling process P_TicketSummaryToday		None
		 [tags]		TT

Execute AORREG-2836		AORREG-2836		PASSED:TT:Check AOR DB Trouble Ticket associated agent log table and fields after automatic ticket creation		None
		 [tags]		TT

Execute AORREG-2841		AORREG-2841		PASSED:TT:Validate CEP moves OPENACTIVE Ticket to CLOSED.CANCELLED		None
		 [tags]		TT

Execute AORREG-2855		AORREG-2855		PASSED:TT:Verify the creation of Ticket with all paramters sent to external system		AORREG-2855_2856_2857
		 [tags]		TT

Execute AORREG-2856		AORREG-2856		PASSED:TT:Verify the parameters sent to external system during modification request		AORREG-2855_2856_2857
		 [tags]		TT

Execute AORREG-2857		AORREG-2857		PASSED:TT:Verify the creation of Ticket with all paramters sent to external system		AORREG-2855_2856_2857
		 [tags]		TT

Execute AORREG-71		AORREG-71		PASSED:TT:Verification of T_TROUBLETICKETALARM table		None
		 [tags]		TT

Execute AORREG-2835		AORREG-2835		PASSED:TT:Check AOR database Trouble Ticket associated alarm table and fields after automatic ticket creation		None
		 [tags]		TT

Execute AORREG-8611		AORREG-8611		PASSED:TT:Verify CEP gets triggered as per schedule for TRA_EmFmTm		CEP
		 [tags]		TT

Execute AORREG-8610		AORREG-8610		PASSED:TT:Verify CEP gets triggered as per schedule for PCS_EmFmTm		CEP
		 [tags]		TT

Execute AORREG-8613		AORREG-8613		PASSED:TT:Verify CEP gets triggered as per schedule for VAS_EmFmTm		CEP
		 [tags]		TT

Execute AORREG-8158		AORREG-8158		PASSED:TT:Verify CEP gets triggered as per schedule for IPM_EmFmTm		CEP
		 [tags]		TT

Execute AORREG-8176		AORREG-8176		PASSED:TT:Verify CEP gets triggered as per schedule for FXA_EmFmTm		CEP
		 [tags]		TT

Execute AORREG-8616		AORREG-8616		PASSED:TT:Verify ticket is associated for TRA_EmFmTm		CTP
		 [tags]		TT

Execute AORREG-8614		AORREG-8614		PASSED:TT:Verify ticket is associated for PCS_EmFmTm		CTP
		 [tags]		TT

Execute AORREG-8165		AORREG-8165		PASSED:TT:Verify ticket is associated for VAS_EmFmTm		CTP
		 [tags]		TT

Execute AORREG-8156		AORREG-8156		PASSED:TT:Verify ticket is associated for IPM_EmFmTm		CTP
		 [tags]		TT

Execute AORREG-8178		AORREG-8178		PASSED:TT:Verify ticket is associated for FXA_EmFmTm		CTP
		 [tags]		TT

Execute AORREG-8191		AORREG-8191		PASSED:TT:Verify ticket is associated for FXS_EmFmTm		CTP
		 [tags]		TT

Execute AORREG-5623		AORREG-5623		PASSED:INV:Validation of TroubleTicket to Inventory call when ACCESS_WS=0, data is in CACHE		None
		 [tags]		INV

Execute AORREG-1309		AORREG-1309		PASSED:INV:MBC_Inventory Request - Response verification		None
		 [tags]		INV

Execute AORREG-2111		AORREG-2111		PASSED:INV:Verify Synchronous response from Inventory webservice for all modules		None
		 [tags]		INV

Execute AORREG-5620		AORREG-5620		PASSED:INV:Validation of EM/Agent to Inventory call when ACCESS_WS=1, data available in cache		None
		 [tags]		INV

Execute AORREG-203		AORREG-203		PASSED:INV:Inventory Request - Response verification		None
		 [tags]		INV

Execute AORREG-8013		AORREG-8013		PASSED:TM:To verify global limit is working as expected		TM_LIMITS
		 [tags]		TM

Execute AORREG-8014		AORREG-8014		PASSED:TM:To verify limit per exchange(CENTRAL) is applied on any tech area(MBA)		TM_LIMITS
		 [tags]		TM

Execute AORREG-8015		AORREG-8015		PASSED:TM:To verify limits is applied on type and central in any tech area		TM_LIMITS
		 [tags]		TM

Execute AORREG-4899		AORREG-4899		PASSED:TM:Limits per Group		TM_LIMITS
		 [tags]		TM

Execute AORREG-4900		AORREG-4900		PASSED:TM:Limits per Group and Exchange		TM_LIMITS
		 [tags]		TM

Execute AORREG-4897		AORREG-4897		PASSED:TM:Limits per Type		TM_LIMITS
		 [tags]		TM

Execute AORREG-2608		AORREG-2608		PASSED:NFR-Reqts:Verify log name patterns		None
		 [tags]		NFR-Reqts

Execute AORREG-2617		AORREG-2617		PASSED:NFR-Reqts:Verify single root path, different to the logs path, to locate all trace files		None
		 [tags]		NFR-Reqts

Execute AORREG-1587		AORREG-1587		PASSED:NFR-Reqts:Verify Service Logs		None
		 [tags]		NFR-Reqts

Execute AORREG-70		AORREG-70		PASSED:NFR-Reqts:Verification of detailed log information		None
		 [tags]		NFR-Reqts

Execute AORREG-8241		AORREG-8241		PASSED:NiFi:Verify nifi is stopped		AORREG-8241_42
		 [tags]		NiFi

Execute AORREG-8242		AORREG-8242		PASSED:NiFi:Verify nifi is started		AORREG-8241_42
		 [tags]		NiFi

Execute AORREG-8069		AORREG-8069		PASSED:CORBA:Verify Event process by CORBA event adapter		AORREG-8245_8068
		 [tags]		CORBA

Execute AORREG-8245		AORREG-8245		PASSED:CORBA:Verify Event process by CORBA event adapter for namin		AORREG-8245_8068
		 [tags]		CORBA

