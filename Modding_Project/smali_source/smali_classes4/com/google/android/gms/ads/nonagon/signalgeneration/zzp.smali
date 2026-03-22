.class public final Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;
.super Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdsi;

.field private final zzc:Z

.field private final zzd:I

.field private final zze:J

.field private final zzf:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;ZILjava/lang/Boolean;Lcom/google/android/gms/internal/ads/zzdsi;)V
    .locals 0
    .param p4    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzc:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzd:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzf:Ljava/lang/Boolean;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb:Lcom/google/android/gms/internal/ads/zzdsi;

    .line 13
    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide p1

    .line 22
    iput-wide p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zze:J

    .line 23
    .line 24
    return-void
.end method

.method private static zza()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbfa;->zzh:Lcom/google/android/gms/internal/ads/zzbef;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljava/lang/Long;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    add-long/2addr v0, v2

    .line 22
    return-wide v0
.end method

.method private final zzb()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-wide v2, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zze:J

    .line 10
    .line 11
    sub-long/2addr v0, v2

    .line 12
    return-wide v0
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroid/util/Pair;

    .line 4
    .line 5
    const-string v2, "sgf_reason"

    .line 6
    .line 7
    move-object/from16 v5, p1

    .line 8
    .line 9
    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/util/Pair;

    .line 13
    .line 14
    const-string v3, "se"

    .line 15
    .line 16
    const-string v4, "query_g"

    .line 17
    .line 18
    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Landroid/util/Pair;

    .line 22
    .line 23
    sget-object v4, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 24
    .line 25
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const-string v6, "ad_format"

    .line 30
    .line 31
    invoke-direct {v3, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v4, Landroid/util/Pair;

    .line 35
    .line 36
    const/4 v6, 0x6

    .line 37
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v8, "rtype"

    .line 42
    .line 43
    invoke-direct {v4, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    new-instance v7, Landroid/util/Pair;

    .line 47
    .line 48
    const-string v8, "scar"

    .line 49
    .line 50
    const-string v9, "true"

    .line 51
    .line 52
    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    new-instance v8, Landroid/util/Pair;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb()J

    .line 58
    .line 59
    .line 60
    move-result-wide v9

    .line 61
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    const-string v10, "lat_ms"

    .line 66
    .line 67
    invoke-direct {v8, v10, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v9, Landroid/util/Pair;

    .line 71
    .line 72
    move-object v10, v8

    .line 73
    iget v8, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzd:I

    .line 74
    .line 75
    const-string v11, "sgpc_rn"

    .line 76
    .line 77
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    invoke-direct {v9, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    new-instance v11, Landroid/util/Pair;

    .line 85
    .line 86
    iget-object v12, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzf:Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    const-string v13, "sgpc_lsu"

    .line 93
    .line 94
    invoke-direct {v11, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iget-boolean v12, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzc:Z

    .line 98
    .line 99
    new-instance v13, Landroid/util/Pair;

    .line 100
    .line 101
    const/4 v14, 0x1

    .line 102
    if-eq v14, v12, :cond_0

    .line 103
    .line 104
    const-string v15, "0"

    .line 105
    .line 106
    :goto_0
    move/from16 v16, v6

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_0
    const-string v15, "1"

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_1
    const-string v6, "tpc"

    .line 113
    .line 114
    invoke-direct {v13, v6, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    const/16 v6, 0x9

    .line 118
    .line 119
    new-array v6, v6, [Landroid/util/Pair;

    .line 120
    .line 121
    const/4 v15, 0x0

    .line 122
    aput-object v1, v6, v15

    .line 123
    .line 124
    aput-object v2, v6, v14

    .line 125
    .line 126
    const/4 v1, 0x2

    .line 127
    aput-object v3, v6, v1

    .line 128
    .line 129
    const/4 v1, 0x3

    .line 130
    aput-object v4, v6, v1

    .line 131
    .line 132
    const/4 v1, 0x4

    .line 133
    aput-object v7, v6, v1

    .line 134
    .line 135
    const/4 v1, 0x5

    .line 136
    aput-object v10, v6, v1

    .line 137
    .line 138
    aput-object v9, v6, v16

    .line 139
    .line 140
    const/4 v1, 0x7

    .line 141
    aput-object v11, v6, v1

    .line 142
    .line 143
    const/16 v1, 0x8

    .line 144
    .line 145
    aput-object v13, v6, v1

    .line 146
    .line 147
    iget-object v1, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb:Lcom/google/android/gms/internal/ads/zzdsi;

    .line 148
    .line 149
    const/4 v2, 0x0

    .line 150
    const-string v3, "sgpcf"

    .line 151
    .line 152
    invoke-static {v1, v2, v3, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzd(Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdrx;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 153
    .line 154
    .line 155
    new-instance v3, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;

    .line 156
    .line 157
    const/4 v4, 0x0

    .line 158
    invoke-static {}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza()J

    .line 159
    .line 160
    .line 161
    move-result-wide v6

    .line 162
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;JI)V

    .line 163
    .line 164
    .line 165
    iget-object v1, v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    .line 166
    .line 167
    invoke-virtual {v1, v12, v3}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->zzf(ZLcom/google/android/gms/ads/nonagon/signalgeneration/zzq;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final onSuccess(Lcom/google/android/gms/ads/query/QueryInfo;)V
    .locals 14

    .line 1
    new-instance v0, Landroid/util/Pair;

    .line 2
    .line 3
    const-string v1, "se"

    .line 4
    .line 5
    const-string v2, "query_g"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/util/Pair;

    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/ads/AdFormat;->BANNER:Lcom/google/android/gms/ads/AdFormat;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "ad_format"

    .line 19
    .line 20
    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Landroid/util/Pair;

    .line 24
    .line 25
    const/4 v3, 0x6

    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const-string v5, "rtype"

    .line 31
    .line 32
    invoke-direct {v2, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    new-instance v4, Landroid/util/Pair;

    .line 36
    .line 37
    const-string v5, "scar"

    .line 38
    .line 39
    const-string v6, "true"

    .line 40
    .line 41
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    new-instance v5, Landroid/util/Pair;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v7, "lat_ms"

    .line 55
    .line 56
    invoke-direct {v5, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Landroid/util/Pair;

    .line 60
    .line 61
    iget v12, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzd:I

    .line 62
    .line 63
    const-string v7, "sgpc_rn"

    .line 64
    .line 65
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v8

    .line 69
    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    new-instance v7, Landroid/util/Pair;

    .line 73
    .line 74
    iget-object v8, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzf:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    const-string v9, "sgpc_lsu"

    .line 81
    .line 82
    invoke-direct {v7, v9, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-boolean v13, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzc:Z

    .line 86
    .line 87
    new-instance v8, Landroid/util/Pair;

    .line 88
    .line 89
    const/4 v9, 0x1

    .line 90
    if-eq v9, v13, :cond_0

    .line 91
    .line 92
    const-string v10, "0"

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const-string v10, "1"

    .line 96
    .line 97
    :goto_0
    const-string v11, "tpc"

    .line 98
    .line 99
    invoke-direct {v8, v11, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    const/16 v10, 0x8

    .line 103
    .line 104
    new-array v10, v10, [Landroid/util/Pair;

    .line 105
    .line 106
    const/4 v11, 0x0

    .line 107
    aput-object v0, v10, v11

    .line 108
    .line 109
    aput-object v1, v10, v9

    .line 110
    .line 111
    const/4 v0, 0x2

    .line 112
    aput-object v2, v10, v0

    .line 113
    .line 114
    const/4 v0, 0x3

    .line 115
    aput-object v4, v10, v0

    .line 116
    .line 117
    const/4 v0, 0x4

    .line 118
    aput-object v5, v10, v0

    .line 119
    .line 120
    const/4 v0, 0x5

    .line 121
    aput-object v6, v10, v0

    .line 122
    .line 123
    aput-object v7, v10, v3

    .line 124
    .line 125
    const/4 v0, 0x7

    .line 126
    aput-object v8, v10, v0

    .line 127
    .line 128
    iget-object v0, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zzb:Lcom/google/android/gms/internal/ads/zzdsi;

    .line 129
    .line 130
    const/4 v1, 0x0

    .line 131
    const-string v2, "sgpcs"

    .line 132
    .line 133
    invoke-static {v0, v1, v2, v10}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzd(Lcom/google/android/gms/internal/ads/zzdsi;Lcom/google/android/gms/internal/ads/zzdrx;Ljava/lang/String;[Landroid/util/Pair;)V

    .line 134
    .line 135
    .line 136
    new-instance v7, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;

    .line 137
    .line 138
    const-string v9, ""

    .line 139
    .line 140
    invoke-static {}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza()J

    .line 141
    .line 142
    .line 143
    move-result-wide v10

    .line 144
    move-object v8, p1

    .line 145
    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzq;-><init>(Lcom/google/android/gms/ads/query/QueryInfo;Ljava/lang/String;JI)V

    .line 146
    .line 147
    .line 148
    iget-object p1, p0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzp;->zza:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;

    .line 149
    .line 150
    invoke-virtual {p1, v13, v7}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzo;->zzf(ZLcom/google/android/gms/ads/nonagon/signalgeneration/zzq;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method
