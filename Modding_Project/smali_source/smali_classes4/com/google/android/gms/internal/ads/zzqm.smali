.class final Lcom/google/android/gms/internal/ads/zzqm;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private zzA:J

.field private zzB:Z

.field private zzC:J

.field private zzD:J

.field private zzE:Z

.field private zzF:J

.field private zzG:Lcom/google/android/gms/internal/ads/zzdg;

.field private final zza:Lcom/google/android/gms/internal/ads/zzql;

.field private final zzb:[J

.field private zzc:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzd:I

.field private zze:Lcom/google/android/gms/internal/ads/zzqk;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzf:I

.field private zzg:J

.field private zzh:F

.field private zzi:Z

.field private zzj:J

.field private zzk:J

.field private zzl:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzm:J

.field private zzn:Z

.field private zzo:Z

.field private zzp:J

.field private zzq:J

.field private zzr:J

.field private zzs:J

.field private zzt:I

.field private zzu:I

.field private zzv:J

.field private zzw:J

.field private zzx:J

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzql;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Lcom/google/android/gms/internal/ads/zzql;

    .line 5
    .line 6
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    .line 7
    .line 8
    const-string v0, "getLatency"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzl:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    const/16 p1, 0xa

    .line 18
    .line 19
    new-array p1, p1, [J

    .line 20
    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzb:[J

    .line 22
    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdg;->zza:Lcom/google/android/gms/internal/ads/zzdg;

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 26
    .line 27
    return-void
.end method

.method private final zzl()J
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzn()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzy:J

    .line 17
    .line 18
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 24
    .line 25
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzq:J

    .line 30
    .line 31
    sub-long v4, v0, v4

    .line 32
    .line 33
    const-wide/16 v6, 0x5

    .line 34
    .line 35
    cmp-long v4, v4, v6

    .line 36
    .line 37
    if-ltz v4, :cond_7

    .line 38
    .line 39
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/media/AudioTrack;

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/4 v6, 0x1

    .line 49
    if-ne v5, v6, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    int-to-long v6, v4

    .line 57
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 58
    .line 59
    const-wide v8, 0xffffffffL

    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    and-long/2addr v6, v8

    .line 65
    const/16 v8, 0x1d

    .line 66
    .line 67
    if-gt v4, v8, :cond_4

    .line 68
    .line 69
    const-wide/16 v8, 0x0

    .line 70
    .line 71
    cmp-long v4, v6, v8

    .line 72
    .line 73
    if-nez v4, :cond_3

    .line 74
    .line 75
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:J

    .line 76
    .line 77
    cmp-long v4, v6, v8

    .line 78
    .line 79
    if-lez v4, :cond_2

    .line 80
    .line 81
    const/4 v4, 0x3

    .line 82
    if-ne v5, v4, :cond_2

    .line 83
    .line 84
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzw:J

    .line 85
    .line 86
    cmp-long v2, v4, v2

    .line 87
    .line 88
    if-nez v2, :cond_6

    .line 89
    .line 90
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzw:J

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    move-wide v6, v8

    .line 94
    :cond_3
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzw:J

    .line 95
    .line 96
    :cond_4
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:J

    .line 97
    .line 98
    cmp-long v2, v2, v6

    .line 99
    .line 100
    if-lez v2, :cond_5

    .line 101
    .line 102
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:J

    .line 103
    .line 104
    const-wide/16 v4, 0x1

    .line 105
    .line 106
    add-long/2addr v2, v4

    .line 107
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:J

    .line 108
    .line 109
    :cond_5
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:J

    .line 110
    .line 111
    :cond_6
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzq:J

    .line 112
    .line 113
    :cond_7
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:J

    .line 114
    .line 115
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzF:J

    .line 116
    .line 117
    add-long/2addr v0, v2

    .line 118
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:J

    .line 119
    .line 120
    const/16 v4, 0x20

    .line 121
    .line 122
    shl-long/2addr v2, v4

    .line 123
    add-long/2addr v0, v2

    .line 124
    return-wide v0
.end method

.method private final zzm()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzl()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private final zzn()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x2

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:J

    .line 14
    .line 15
    return-wide v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 27
    .line 28
    sub-long/2addr v0, v2

    .line 29
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:F

    .line 30
    .line 31
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzp(JI)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:J

    .line 42
    .line 43
    add-long/2addr v2, v0

    .line 44
    return-wide v2
.end method

.method private final zzo()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:I

    .line 7
    .line 8
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:I

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzk:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:J

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzD:J

    .line 15
    .line 16
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Z

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/media/AudioTrack;

    .line 5
    .line 6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x3

    .line 14
    const-wide/16 v5, 0x0

    .line 15
    .line 16
    const-wide/16 v7, 0x3e8

    .line 17
    .line 18
    if-ne v3, v4, :cond_0

    .line 19
    .line 20
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 21
    .line 22
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdg;->zzc()J

    .line 23
    .line 24
    .line 25
    move-result-wide v9

    .line 26
    div-long/2addr v9, v7

    .line 27
    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzk:J

    .line 28
    .line 29
    sub-long v11, v9, v11

    .line 30
    .line 31
    const-wide/16 v13, 0x7530

    .line 32
    .line 33
    cmp-long v3, v11, v13

    .line 34
    .line 35
    if-ltz v3, :cond_3

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzm()J

    .line 38
    .line 39
    .line 40
    move-result-wide v11

    .line 41
    cmp-long v3, v11, v5

    .line 42
    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    :cond_0
    move-wide/from16 v20, v7

    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzb:[J

    .line 50
    .line 51
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:I

    .line 52
    .line 53
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:F

    .line 54
    .line 55
    invoke-static {v11, v12, v14}, Lcom/google/android/gms/internal/ads/zzeu;->zzr(JF)J

    .line 56
    .line 57
    .line 58
    move-result-wide v11

    .line 59
    sub-long/2addr v11, v9

    .line 60
    aput-wide v11, v3, v13

    .line 61
    .line 62
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:I

    .line 63
    .line 64
    add-int/2addr v11, v1

    .line 65
    const/16 v12, 0xa

    .line 66
    .line 67
    rem-int/2addr v11, v12

    .line 68
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzt:I

    .line 69
    .line 70
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:I

    .line 71
    .line 72
    if-ge v11, v12, :cond_2

    .line 73
    .line 74
    add-int/2addr v11, v1

    .line 75
    iput v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:I

    .line 76
    .line 77
    :cond_2
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzk:J

    .line 78
    .line 79
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:J

    .line 80
    .line 81
    const/4 v11, 0x0

    .line 82
    :goto_0
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:I

    .line 83
    .line 84
    if-ge v11, v12, :cond_3

    .line 85
    .line 86
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:J

    .line 87
    .line 88
    aget-wide v15, v3, v11

    .line 89
    .line 90
    move-wide/from16 v20, v7

    .line 91
    .line 92
    int-to-long v7, v12

    .line 93
    div-long/2addr v15, v7

    .line 94
    add-long/2addr v13, v15

    .line 95
    iput-wide v13, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:J

    .line 96
    .line 97
    add-int/2addr v11, v1

    .line 98
    move-wide/from16 v7, v20

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    move-wide/from16 v20, v7

    .line 102
    .line 103
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zze:Lcom/google/android/gms/internal/ads/zzqk;

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v3, v9, v10}, Lcom/google/android/gms/internal/ads/zzqk;->zzg(J)Z

    .line 109
    .line 110
    .line 111
    move-result v7

    .line 112
    const-wide/32 v22, 0x4c4b40

    .line 113
    .line 114
    .line 115
    if-nez v7, :cond_4

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqk;->zzb()J

    .line 119
    .line 120
    .line 121
    move-result-wide v14

    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqk;->zza()J

    .line 123
    .line 124
    .line 125
    move-result-wide v12

    .line 126
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzm()J

    .line 127
    .line 128
    .line 129
    move-result-wide v18

    .line 130
    sub-long v7, v14, v9

    .line 131
    .line 132
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v7

    .line 136
    cmp-long v7, v7, v22

    .line 137
    .line 138
    if-lez v7, :cond_5

    .line 139
    .line 140
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Lcom/google/android/gms/internal/ads/zzql;

    .line 141
    .line 142
    move-wide/from16 v16, v9

    .line 143
    .line 144
    invoke-interface/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/zzql;->zzd(JJJJ)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqk;->zzd()V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_5
    move-wide/from16 v16, v9

    .line 152
    .line 153
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 154
    .line 155
    invoke-static {v12, v13, v7}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 156
    .line 157
    .line 158
    move-result-wide v7

    .line 159
    sub-long v7, v7, v18

    .line 160
    .line 161
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    .line 162
    .line 163
    .line 164
    move-result-wide v7

    .line 165
    cmp-long v7, v7, v22

    .line 166
    .line 167
    if-lez v7, :cond_6

    .line 168
    .line 169
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Lcom/google/android/gms/internal/ads/zzql;

    .line 170
    .line 171
    invoke-interface/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/zzql;->zzc(JJJJ)V

    .line 172
    .line 173
    .line 174
    move-wide/from16 v9, v16

    .line 175
    .line 176
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqk;->zzd()V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_6
    move-wide/from16 v9, v16

    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqk;->zzc()V

    .line 183
    .line 184
    .line 185
    :goto_1
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzo:Z

    .line 186
    .line 187
    if-eqz v3, :cond_9

    .line 188
    .line 189
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzl:Ljava/lang/reflect/Method;

    .line 190
    .line 191
    if-eqz v3, :cond_9

    .line 192
    .line 193
    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:J

    .line 194
    .line 195
    sub-long v7, v9, v7

    .line 196
    .line 197
    const-wide/32 v11, 0x7a120

    .line 198
    .line 199
    .line 200
    cmp-long v7, v7, v11

    .line 201
    .line 202
    if-ltz v7, :cond_9

    .line 203
    .line 204
    const/4 v7, 0x0

    .line 205
    :try_start_0
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/media/AudioTrack;

    .line 206
    .line 207
    if-eqz v8, :cond_7

    .line 208
    .line 209
    invoke-virtual {v3, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Ljava/lang/Integer;

    .line 214
    .line 215
    sget-object v8, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    int-to-long v11, v3

    .line 222
    mul-long v11, v11, v20

    .line 223
    .line 224
    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzg:J

    .line 225
    .line 226
    sub-long/2addr v11, v13

    .line 227
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:J

    .line 228
    .line 229
    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 230
    .line 231
    .line 232
    move-result-wide v11

    .line 233
    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:J

    .line 234
    .line 235
    cmp-long v3, v11, v22

    .line 236
    .line 237
    if-lez v3, :cond_8

    .line 238
    .line 239
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Lcom/google/android/gms/internal/ads/zzql;

    .line 240
    .line 241
    invoke-interface {v3, v11, v12}, Lcom/google/android/gms/internal/ads/zzql;->zza(J)V

    .line 242
    .line 243
    .line 244
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:J

    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_7
    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :catch_0
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzl:Ljava/lang/reflect/Method;

    .line 249
    .line 250
    :cond_8
    :goto_2
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:J

    .line 251
    .line 252
    :cond_9
    :goto_3
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 253
    .line 254
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdg;->zzc()J

    .line 255
    .line 256
    .line 257
    move-result-wide v7

    .line 258
    div-long v7, v7, v20

    .line 259
    .line 260
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zze:Lcom/google/android/gms/internal/ads/zzqk;

    .line 261
    .line 262
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    .line 264
    .line 265
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqk;->zzf()Z

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    if-eqz v9, :cond_a

    .line 270
    .line 271
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqk;->zza()J

    .line 272
    .line 273
    .line 274
    move-result-wide v5

    .line 275
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 276
    .line 277
    invoke-static {v5, v6, v10}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 278
    .line 279
    .line 280
    move-result-wide v5

    .line 281
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzqk;->zzb()J

    .line 282
    .line 283
    .line 284
    move-result-wide v10

    .line 285
    sub-long v10, v7, v10

    .line 286
    .line 287
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:F

    .line 288
    .line 289
    invoke-static {v10, v11, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    .line 290
    .line 291
    .line 292
    move-result-wide v10

    .line 293
    add-long/2addr v5, v10

    .line 294
    goto :goto_5

    .line 295
    :cond_a
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzu:I

    .line 296
    .line 297
    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    .line 298
    .line 299
    .line 300
    .line 301
    .line 302
    if-nez v3, :cond_c

    .line 303
    .line 304
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 305
    .line 306
    cmp-long v3, v12, v10

    .line 307
    .line 308
    if-eqz v3, :cond_b

    .line 309
    .line 310
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzn()J

    .line 311
    .line 312
    .line 313
    move-result-wide v12

    .line 314
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 315
    .line 316
    invoke-static {v12, v13, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 317
    .line 318
    .line 319
    move-result-wide v12

    .line 320
    goto :goto_4

    .line 321
    :cond_b
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzm()J

    .line 322
    .line 323
    .line 324
    move-result-wide v12

    .line 325
    goto :goto_4

    .line 326
    :cond_c
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzj:J

    .line 327
    .line 328
    add-long/2addr v12, v7

    .line 329
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:F

    .line 330
    .line 331
    invoke-static {v12, v13, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    .line 332
    .line 333
    .line 334
    move-result-wide v12

    .line 335
    :goto_4
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:J

    .line 336
    .line 337
    sub-long/2addr v12, v14

    .line 338
    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 339
    .line 340
    .line 341
    move-result-wide v5

    .line 342
    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 343
    .line 344
    cmp-long v3, v12, v10

    .line 345
    .line 346
    if-eqz v3, :cond_d

    .line 347
    .line 348
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzy:J

    .line 349
    .line 350
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 351
    .line 352
    invoke-static {v10, v11, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 353
    .line 354
    .line 355
    move-result-wide v10

    .line 356
    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(JJ)J

    .line 357
    .line 358
    .line 359
    move-result-wide v5

    .line 360
    :cond_d
    :goto_5
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzB:Z

    .line 361
    .line 362
    if-eq v3, v9, :cond_e

    .line 363
    .line 364
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:J

    .line 365
    .line 366
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzD:J

    .line 367
    .line 368
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:J

    .line 369
    .line 370
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzC:J

    .line 371
    .line 372
    :cond_e
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzD:J

    .line 373
    .line 374
    sub-long v10, v7, v10

    .line 375
    .line 376
    const-wide/32 v12, 0xf4240

    .line 377
    .line 378
    .line 379
    cmp-long v3, v10, v12

    .line 380
    .line 381
    if-gez v3, :cond_f

    .line 382
    .line 383
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzC:J

    .line 384
    .line 385
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:F

    .line 386
    .line 387
    invoke-static {v10, v11, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzq(JF)J

    .line 388
    .line 389
    .line 390
    move-result-wide v16

    .line 391
    add-long v14, v14, v16

    .line 392
    .line 393
    mul-long v10, v10, v20

    .line 394
    .line 395
    div-long/2addr v10, v12

    .line 396
    mul-long/2addr v5, v10

    .line 397
    sub-long v10, v20, v10

    .line 398
    .line 399
    mul-long/2addr v10, v14

    .line 400
    add-long/2addr v5, v10

    .line 401
    div-long v5, v5, v20

    .line 402
    .line 403
    :cond_f
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Z

    .line 404
    .line 405
    if-nez v3, :cond_10

    .line 406
    .line 407
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:J

    .line 408
    .line 409
    cmp-long v3, v5, v10

    .line 410
    .line 411
    if-lez v3, :cond_10

    .line 412
    .line 413
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    if-ne v2, v4, :cond_10

    .line 418
    .line 419
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzi:Z

    .line 420
    .line 421
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:J

    .line 422
    .line 423
    sub-long v1, v5, v1

    .line 424
    .line 425
    sget-object v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:Ljava/lang/String;

    .line 426
    .line 427
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:F

    .line 428
    .line 429
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    .line 430
    .line 431
    .line 432
    move-result-wide v1

    .line 433
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeu;->zzr(JF)J

    .line 434
    .line 435
    .line 436
    move-result-wide v1

    .line 437
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 438
    .line 439
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdg;->zza()J

    .line 440
    .line 441
    .line 442
    move-result-wide v3

    .line 443
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    .line 444
    .line 445
    .line 446
    move-result-wide v1

    .line 447
    sub-long/2addr v3, v1

    .line 448
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Lcom/google/android/gms/internal/ads/zzql;

    .line 449
    .line 450
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzql;->zzb(J)V

    .line 451
    .line 452
    .line 453
    :cond_10
    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzA:J

    .line 454
    .line 455
    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzz:J

    .line 456
    .line 457
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzqm;->zzB:Z

    .line 458
    .line 459
    return-wide v5
.end method

.method public final zzb(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzl()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 18
    .line 19
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzy:J

    .line 20
    .line 21
    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzo()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/media/AudioTrack;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zze:Lcom/google/android/gms/internal/ads/zzqk;

    .line 8
    .line 9
    return-void
.end method

.method public final zzd(Landroid/media/AudioTrack;ZIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/media/AudioTrack;

    .line 2
    .line 3
    iput p5, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:I

    .line 4
    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqk;

    .line 6
    .line 7
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Landroid/media/AudioTrack;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zze:Lcom/google/android/gms/internal/ads/zzqk;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 17
    .line 18
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzeu;->zzK(I)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzo:Z

    .line 23
    .line 24
    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    div-int/2addr p5, p4

    .line 32
    int-to-long p4, p5

    .line 33
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 34
    .line 35
    invoke-static {p4, p5, p1}, Lcom/google/android/gms/internal/ads/zzeu;->zzt(JI)J

    .line 36
    .line 37
    .line 38
    move-result-wide p4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-wide p4, p2

    .line 41
    :goto_0
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzg:J

    .line 42
    .line 43
    const-wide/16 p4, 0x0

    .line 44
    .line 45
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzr:J

    .line 46
    .line 47
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzs:J

    .line 48
    .line 49
    const/4 p1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzE:Z

    .line 51
    .line 52
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzF:J

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzn:Z

    .line 55
    .line 56
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 57
    .line 58
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzw:J

    .line 59
    .line 60
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzp:J

    .line 61
    .line 62
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzm:J

    .line 63
    .line 64
    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    .line 66
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzh:F

    .line 67
    .line 68
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 2
    .line 3
    return-void
.end method

.method public final zzf()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeu;->zzs(J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zze:Lcom/google/android/gms/internal/ads/zzqk;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zze()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final zzg(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zza()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzf:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzp(JI)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    cmp-long p1, p1, v0

    .line 12
    .line 13
    if-gtz p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public final zzh()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public final zzi(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzw:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v0, v0, v2

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long p1, p1, v0

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzG:Lcom/google/android/gms/internal/ads/zzdg;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdg;->zzb()J

    .line 21
    .line 22
    .line 23
    move-result-wide p1

    .line 24
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzw:J

    .line 25
    .line 26
    sub-long/2addr p1, v0

    .line 27
    const-wide/16 v0, 0xc8

    .line 28
    .line 29
    cmp-long p1, p1, v0

    .line 30
    .line 31
    if-ltz p1, :cond_0

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_0
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public final zzj(J)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzc:Landroid/media/AudioTrack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzn:Z

    .line 11
    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqm;->zzg(J)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzn:Z

    .line 17
    .line 18
    const/4 p2, 0x1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    if-eq v0, p2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zza:Lcom/google/android/gms/internal/ads/zzql;

    .line 26
    .line 27
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzd:I

    .line 28
    .line 29
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzg:J

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeu;->zzv(J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzql;->zze(IJ)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return p2
.end method

.method public final zzk()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzo()V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzv:J

    .line 5
    .line 6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zze:Lcom/google/android/gms/internal/ads/zzqk;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zze()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqm;->zzl()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqm;->zzx:J

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    return v0
.end method
