.class Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;
.super Landroidx/room/RoomOpenHelper$Delegate;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;


# direct methods
.method public constructor <init>(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/room/RoomOpenHelper$Delegate;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public createAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1

    .line 1
    const-string v0, "CREATE TABLE IF NOT EXISTS `CdSkuDetails` (`sku` TEXT NOT NULL, `originalJson` TEXT NOT NULL, `type` TEXT NOT NULL, `price` TEXT NOT NULL, `title` TEXT NOT NULL, `description` TEXT NOT NULL, PRIMARY KEY(`sku`))"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "CREATE TABLE IF NOT EXISTS `purchase_order` (`cdOrderId` TEXT NOT NULL, `jumpUrl` TEXT NOT NULL, `sku` TEXT NOT NULL, `skuType` TEXT NOT NULL, `purchaseToken` TEXT NOT NULL, `purchaseData` TEXT NOT NULL, `status` INTEGER NOT NULL, PRIMARY KEY(`cdOrderId`, `purchaseToken`))"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 12
    .line 13
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'04ad801e7993b559c79bb5e666e04b25\')"

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public dropAllTables(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    const-string v0, "DROP TABLE IF EXISTS `CdSkuDetails`"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DROP TABLE IF EXISTS `purchase_order`"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$000(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$100(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$200(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onDestructiveMigration(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$300(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$400(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    iget-object v2, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$500(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 33
    .line 34
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onCreate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$602(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$700(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$800(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$900(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x0

    .line 30
    :goto_0
    if-ge v1, v0, :cond_0

    .line 31
    .line 32
    iget-object v2, p0, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl$1;->this$0:Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;->access$1000(Lcom/changdu/component/pay/google/localdb/LocalBillingDb_Impl;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Landroidx/room/RoomDatabase$Callback;

    .line 43
    .line 44
    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$Callback;->onOpen(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 45
    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPreMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/room/util/DBUtil;->dropFtsSyncTriggers(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onValidateSchema(Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/room/RoomOpenHelper$ValidationResult;
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 7
    .line 8
    .line 9
    new-instance v3, Landroidx/room/util/TableInfo$Column;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v9, 0x1

    .line 13
    const-string v4, "sku"

    .line 14
    .line 15
    const-string v5, "TEXT"

    .line 16
    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x1

    .line 19
    invoke-direct/range {v3 .. v9}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string v2, "sku"

    .line 23
    .line 24
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    new-instance v4, Landroidx/room/util/TableInfo$Column;

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x1

    .line 31
    const-string v5, "originalJson"

    .line 32
    .line 33
    const-string v6, "TEXT"

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    invoke-direct/range {v4 .. v10}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    const-string v3, "originalJson"

    .line 40
    .line 41
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    new-instance v5, Landroidx/room/util/TableInfo$Column;

    .line 45
    .line 46
    const/4 v10, 0x0

    .line 47
    const/4 v11, 0x1

    .line 48
    const-string v6, "type"

    .line 49
    .line 50
    const-string v7, "TEXT"

    .line 51
    .line 52
    const/4 v8, 0x1

    .line 53
    const/4 v9, 0x0

    .line 54
    invoke-direct/range {v5 .. v11}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    const-string v3, "type"

    .line 58
    .line 59
    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    new-instance v6, Landroidx/room/util/TableInfo$Column;

    .line 63
    .line 64
    const/4 v11, 0x0

    .line 65
    const/4 v12, 0x1

    .line 66
    const-string v7, "price"

    .line 67
    .line 68
    const-string v8, "TEXT"

    .line 69
    .line 70
    const/4 v9, 0x1

    .line 71
    const/4 v10, 0x0

    .line 72
    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    const-string v3, "price"

    .line 76
    .line 77
    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    new-instance v7, Landroidx/room/util/TableInfo$Column;

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x1

    .line 84
    const-string v8, "title"

    .line 85
    .line 86
    const-string v9, "TEXT"

    .line 87
    .line 88
    const/4 v10, 0x1

    .line 89
    const/4 v11, 0x0

    .line 90
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 91
    .line 92
    .line 93
    const-string v3, "title"

    .line 94
    .line 95
    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    new-instance v8, Landroidx/room/util/TableInfo$Column;

    .line 99
    .line 100
    const/4 v13, 0x0

    .line 101
    const/4 v14, 0x1

    .line 102
    const-string v9, "description"

    .line 103
    .line 104
    const-string v10, "TEXT"

    .line 105
    .line 106
    const/4 v11, 0x1

    .line 107
    const/4 v12, 0x0

    .line 108
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 109
    .line 110
    .line 111
    const-string v3, "description"

    .line 112
    .line 113
    invoke-virtual {v1, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    new-instance v3, Ljava/util/HashSet;

    .line 117
    .line 118
    const/4 v4, 0x0

    .line 119
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 120
    .line 121
    .line 122
    new-instance v5, Ljava/util/HashSet;

    .line 123
    .line 124
    invoke-direct {v5, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 125
    .line 126
    .line 127
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 128
    .line 129
    const-string v7, "CdSkuDetails"

    .line 130
    .line 131
    invoke-direct {v6, v7, v1, v3, v5}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v6, v1}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    const-string v5, "\n Found:\n"

    .line 143
    .line 144
    if-nez v3, :cond_0

    .line 145
    .line 146
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 147
    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v3, "CdSkuDetails(com.changdu.component.pay.google.localdb.CdSkuDetails).\n Expected:\n"

    .line 151
    .line 152
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-direct {v0, v4, v1}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-object v0

    .line 172
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    .line 173
    .line 174
    const/4 v3, 0x7

    .line 175
    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 176
    .line 177
    .line 178
    new-instance v6, Landroidx/room/util/TableInfo$Column;

    .line 179
    .line 180
    const/4 v11, 0x0

    .line 181
    const/4 v12, 0x1

    .line 182
    const-string v7, "cdOrderId"

    .line 183
    .line 184
    const-string v8, "TEXT"

    .line 185
    .line 186
    const/4 v9, 0x1

    .line 187
    const/4 v10, 0x1

    .line 188
    invoke-direct/range {v6 .. v12}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 189
    .line 190
    .line 191
    const-string v3, "cdOrderId"

    .line 192
    .line 193
    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    new-instance v7, Landroidx/room/util/TableInfo$Column;

    .line 197
    .line 198
    const/4 v12, 0x0

    .line 199
    const/4 v13, 0x1

    .line 200
    const-string v8, "jumpUrl"

    .line 201
    .line 202
    const-string v9, "TEXT"

    .line 203
    .line 204
    const/4 v11, 0x0

    .line 205
    invoke-direct/range {v7 .. v13}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    const-string v3, "jumpUrl"

    .line 209
    .line 210
    invoke-virtual {v1, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    new-instance v8, Landroidx/room/util/TableInfo$Column;

    .line 214
    .line 215
    const/4 v13, 0x0

    .line 216
    const/4 v14, 0x1

    .line 217
    const-string v9, "sku"

    .line 218
    .line 219
    const-string v10, "TEXT"

    .line 220
    .line 221
    const/4 v11, 0x1

    .line 222
    const/4 v12, 0x0

    .line 223
    invoke-direct/range {v8 .. v14}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    new-instance v9, Landroidx/room/util/TableInfo$Column;

    .line 230
    .line 231
    const/4 v14, 0x0

    .line 232
    const/4 v15, 0x1

    .line 233
    const-string v10, "skuType"

    .line 234
    .line 235
    const-string v11, "TEXT"

    .line 236
    .line 237
    const/4 v12, 0x1

    .line 238
    const/4 v13, 0x0

    .line 239
    invoke-direct/range {v9 .. v15}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    const-string v2, "skuType"

    .line 243
    .line 244
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    new-instance v10, Landroidx/room/util/TableInfo$Column;

    .line 248
    .line 249
    const/4 v15, 0x0

    .line 250
    const/16 v16, 0x1

    .line 251
    .line 252
    const-string v11, "purchaseToken"

    .line 253
    .line 254
    const-string v12, "TEXT"

    .line 255
    .line 256
    const/4 v13, 0x1

    .line 257
    const/4 v14, 0x2

    .line 258
    invoke-direct/range {v10 .. v16}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 259
    .line 260
    .line 261
    const-string v2, "purchaseToken"

    .line 262
    .line 263
    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    new-instance v11, Landroidx/room/util/TableInfo$Column;

    .line 267
    .line 268
    const/16 v16, 0x0

    .line 269
    .line 270
    const/16 v17, 0x1

    .line 271
    .line 272
    const-string v12, "purchaseData"

    .line 273
    .line 274
    const-string v13, "TEXT"

    .line 275
    .line 276
    const/4 v14, 0x1

    .line 277
    const/4 v15, 0x0

    .line 278
    invoke-direct/range {v11 .. v17}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 279
    .line 280
    .line 281
    const-string v2, "purchaseData"

    .line 282
    .line 283
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    new-instance v12, Landroidx/room/util/TableInfo$Column;

    .line 287
    .line 288
    const/16 v17, 0x0

    .line 289
    .line 290
    const/16 v18, 0x1

    .line 291
    .line 292
    const-string v13, "status"

    .line 293
    .line 294
    const-string v14, "INTEGER"

    .line 295
    .line 296
    const/4 v15, 0x1

    .line 297
    const/16 v16, 0x0

    .line 298
    .line 299
    invoke-direct/range {v12 .. v18}, Landroidx/room/util/TableInfo$Column;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    .line 300
    .line 301
    .line 302
    const-string v2, "status"

    .line 303
    .line 304
    invoke-virtual {v1, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    new-instance v2, Ljava/util/HashSet;

    .line 308
    .line 309
    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 310
    .line 311
    .line 312
    new-instance v3, Ljava/util/HashSet;

    .line 313
    .line 314
    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 315
    .line 316
    .line 317
    new-instance v6, Landroidx/room/util/TableInfo;

    .line 318
    .line 319
    const-string v7, "purchase_order"

    .line 320
    .line 321
    invoke-direct {v6, v7, v1, v2, v3}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v0, v7}, Landroidx/room/util/TableInfo;->read(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v6, v0}, Landroidx/room/util/TableInfo;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v1

    .line 332
    if-nez v1, :cond_1

    .line 333
    .line 334
    new-instance v1, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 335
    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    .line 337
    .line 338
    const-string v3, "purchase_order(com.changdu.component.pay.google.localdb.PurchaseOrder).\n Expected:\n"

    .line 339
    .line 340
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-direct {v1, v4, v0}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 357
    .line 358
    .line 359
    return-object v1

    .line 360
    :cond_1
    new-instance v0, Landroidx/room/RoomOpenHelper$ValidationResult;

    .line 361
    .line 362
    const/4 v1, 0x1

    .line 363
    const/4 v2, 0x0

    .line 364
    invoke-direct {v0, v1, v2}, Landroidx/room/RoomOpenHelper$ValidationResult;-><init>(ZLjava/lang/String;)V

    .line 365
    .line 366
    .line 367
    return-object v0
.end method
