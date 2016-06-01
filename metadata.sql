SET NOCOUNT ON


;with cte 
        (
		ID,
		StagingTable,
		DeltaTable
		)
		as (
		SELECT 1,
		       N'dbo.stagingObservations',
			   N'dbo.observations'
			   )
INSERT INTO dbo.metadataCounts
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
			   N'',
			   N'',
			   N''
        UNION ALL
		SELECT 2,
		       1,
			   N'vPhotometry',
			   N'vPhotometry',
			   N'vPhotometryId',
			   N'',
			   N'',
			   N''
        UNION ALL
		SELECT 3,
		       1,
			   N'bPhotometry',
			   N'bPhotometry',
			   N'bPhotometryId',
			   N'',
			   N'',
			   N''
        UNION ALL
		SELECT 4,
		       1,
			   N'uPhotometryTime',
			   N'uPhotometryTime',
			   N'uPhotometryTimeId',
			   N'',
			   N'',
			   N''   
		UNION ALL
		SELECT 5,
		       1,
			   N'vPhotometryTime',
			   N'vPhotometryTime',
			   N'vPhotometryTimeId',
			   N'',
			   N'',
			   N'' 
        UNION ALL
		SELECT 6,
		       1,
			   N'bPhotometryTime',
			   N'bPhotometryTime',
			   N'bPhotometryTimeId',
			   N'',
			   N'',
			   N'' 
			   )
INSERT INTO dbo.metadataComparison
               ( ID,
		         MetadataCountsId,
		         StagingColumn,
		         DeltaColumn,
		         DeltaColumnId,
		         DataTypeConversion,
		         NullValuesConversion,
		         JoinHint
			   )
			   select * from cte

GO