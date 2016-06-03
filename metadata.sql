SET NOCOUNT ON


;with cte 
        (
		ID,
		StagingTable,
		DeltaTable
		)
		as (
		SELECT 1,
		       N'stg.stagingObservations',
			   N'bi.observations'
			   )
INSERT INTO util.metadataCounts
               ( ID,
		         StagingTable,
				 DeltaTable
			   )
			   select * from cte

;With cte
        (
		ID,
		MetadataCountsId,
		StagingColumn,
		DeltaColumn,
		DeltaColumnId,
		PhotometryTable,
		DataTypeConversion,
		NullValuesConversion,
		JoinHint
		)
		as (
		SELECT 1,
		       1,
			   N'uPhotometry',
			   N'uPhotometry',
			   N'uPhotometryId',
			   N'bi.uPhotometry',
			   N'',
			   N'',
			   N''
        UNION ALL
		SELECT 2,
		       1,
			   N'vPhotometry',
			   N'vPhotometry',
			   N'vPhotometryId',
			   N'bi.vPhotometry',
			   N'',
			   N'',
			   N''
        UNION ALL
		SELECT 3,
		       1,
			   N'bPhotometry',
			   N'bPhotometry',
			   N'bPhotometryId',
			   N'bi.bPhotometry',
			   N'',
			   N'',
			   N''
        UNION ALL
		SELECT 4,
		       1,
			   N'uPhotometryTime',
			   N'uPhotometryTime',
			   N'uPhotometryTimeId',
			   N'bi.uPhotometryTime',
			   N'',
			   N'',
			   N''   
		UNION ALL
		SELECT 5,
		       1,
			   N'vPhotometryTime',
			   N'vPhotometryTime',
			   N'vPhotometryTimeId',
			   N'bi.vPhotometryTime',
			   N'',
			   N'',
			   N'' 
        UNION ALL
		SELECT 6,
		       1,
			   N'bPhotometryTime',
			   N'bPhotometryTime',
			   N'bPhotometryTimeId',
			   N'bi.bPhotometryTime',
			   N'',
			   N'',
			   N'' 
			   )
INSERT INTO util.metadataComparison
               ( ID,
		         MetadataCountsId,
		         StagingColumn,
		         DeltaColumn,
		         DeltaColumnId,
				 PhotometryTable,
		         DataTypeConversion,
		         NullValuesConversion,
		         JoinHint
			   )
			   select * from cte
GO
