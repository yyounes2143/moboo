.class public final Lcom/google/android/gms/internal/ads/zzcdl;
.super Lcom/google/android/gms/internal/ads/zzcdi;
.source "Proguard"


# static fields
.field public static final synthetic zzd:I

.field private static final zze:Ljava/util/Set;

.field private static final zzf:Ljava/text/DecimalFormat;


# instance fields
.field private zzg:Ljava/io/File;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdl;->zze:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Ljava/text/DecimalFormat;

    .line 13
    .line 14
    const-string v1, "#,###"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/google/android/gms/internal/ads/zzcdl;->zzf:Ljava/text/DecimalFormat;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcbw;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcdi;-><init>(Lcom/google/android/gms/internal/ads/zzcbw;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdi;->zza:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 13
    .line 14
    const-string p1, "Context.getCacheDir() returned null"

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqh;->zza()Lcom/google/android/gms/internal/ads/zzfqj;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "admobVideoStreams"

    .line 27
    .line 28
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzfqi;->zza(Lcom/google/android/gms/internal/ads/zzfqj;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    const/4 v0, 0x0

    .line 42
    if-nez p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 64
    .line 65
    const-string v1, "Could not create preload cache directory at "

    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 75
    .line 76
    return-void

    .line 77
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 78
    .line 79
    const/4 v1, 0x1

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_4

    .line 86
    .line 87
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 88
    .line 89
    invoke-virtual {p1, v1, v2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-nez p1, :cond_3

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    return-void

    .line 97
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 108
    .line 109
    const-string v1, "Could not set cache file permissions at "

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 119
    .line 120
    return-void
.end method

.method private final zza(Ljava/io/File;)Ljava/io/File;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqh;->zza()Lcom/google/android/gms/internal/ads/zzfqj;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v3, ".done"

    .line 18
    .line 19
    invoke-virtual {p1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfqi;->zza(Lcom/google/android/gms/internal/ads/zzfqj;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method


# virtual methods
.method public final zzf()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcdl;->zzh:Z

    .line 3
    .line 4
    return-void
.end method

.method public final zzt(Ljava/lang/String;)Z
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const/4 v7, 0x1

    .line 6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 7
    .line 8
    const/4 v8, 0x0

    .line 9
    const/4 v9, 0x0

    .line 10
    if-eqz v0, :cond_1c

    .line 11
    .line 12
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    move v5, v8

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    array-length v3, v0

    .line 23
    move v4, v8

    .line 24
    move v5, v4

    .line 25
    :goto_0
    if-ge v4, v3, :cond_3

    .line 26
    .line 27
    aget-object v6, v0, v4

    .line 28
    .line 29
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    const-string v10, ".done"

    .line 34
    .line 35
    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    if-nez v6, :cond_2

    .line 40
    .line 41
    add-int/2addr v5, v7

    .line 42
    :cond_2
    add-int/2addr v4, v7

    .line 43
    goto :goto_0

    .line 44
    :cond_3
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzr:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-le v5, v0, :cond_9

    .line 61
    .line 62
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 63
    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    goto :goto_4

    .line 67
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    array-length v3, v0

    .line 72
    const-wide v4, 0x7fffffffffffffffL

    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    move v6, v8

    .line 78
    move-object v10, v9

    .line 79
    :goto_2
    if-ge v6, v3, :cond_6

    .line 80
    .line 81
    aget-object v11, v0, v6

    .line 82
    .line 83
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v12

    .line 87
    const-string v13, ".done"

    .line 88
    .line 89
    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 90
    .line 91
    .line 92
    move-result v12

    .line 93
    if-nez v12, :cond_5

    .line 94
    .line 95
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    .line 96
    .line 97
    .line 98
    move-result-wide v12

    .line 99
    cmp-long v14, v12, v4

    .line 100
    .line 101
    if-gez v14, :cond_5

    .line 102
    .line 103
    move-object v10, v11

    .line 104
    move-wide v4, v12

    .line 105
    :cond_5
    add-int/2addr v6, v7

    .line 106
    goto :goto_2

    .line 107
    :cond_6
    if-eqz v10, :cond_7

    .line 108
    .line 109
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzcdl;->zza(Ljava/io/File;)Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_8

    .line 122
    .line 123
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    and-int/2addr v0, v3

    .line 128
    goto :goto_3

    .line 129
    :cond_7
    move v0, v8

    .line 130
    :cond_8
    :goto_3
    if-nez v0, :cond_0

    .line 131
    .line 132
    :goto_4
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 133
    .line 134
    const-string v0, "Unable to expire stream cache"

    .line 135
    .line 136
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    const-string v0, "expireFailed"

    .line 140
    .line 141
    invoke-virtual {v1, v2, v9, v0, v9}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v8

    .line 145
    :cond_9
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzg(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    new-instance v10, Ljava/io/File;

    .line 150
    .line 151
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqh;->zza()Lcom/google/android/gms/internal/ads/zzfqj;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 156
    .line 157
    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzfqi;->zza(Lcom/google/android/gms/internal/ads/zzfqj;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzcdl;->zza(Ljava/io/File;)Ljava/io/File;

    .line 165
    .line 166
    .line 167
    move-result-object v11

    .line 168
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_b

    .line 173
    .line 174
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_a

    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_a
    invoke-virtual {v10}, Ljava/io/File;->length()J

    .line 182
    .line 183
    .line 184
    move-result-wide v3

    .line 185
    long-to-int v0, v3

    .line 186
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 191
    .line 192
    const-string v4, "Stream cache hit at "

    .line 193
    .line 194
    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    invoke-virtual {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    .line 207
    .line 208
    return v7

    .line 209
    :cond_b
    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzcdl;->zzg:Ljava/io/File;

    .line 210
    .line 211
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    sget-object v4, Lcom/google/android/gms/internal/ads/zzcdl;->zze:Ljava/util/Set;

    .line 224
    .line 225
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    monitor-enter v4

    .line 230
    :try_start_0
    invoke-interface {v4, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_c

    .line 235
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .line 240
    .line 241
    const-string v3, "Stream cache already in progress at "

    .line 242
    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 254
    .line 255
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    const-string v3, "inProgress"

    .line 263
    .line 264
    invoke-virtual {v1, v2, v0, v3, v9}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    monitor-exit v4

    .line 268
    return v8

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    goto/16 :goto_16

    .line 271
    .line 272
    :cond_c
    invoke-interface {v4, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    const-string v13, "error"

    .line 277
    .line 278
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfqu;->zza()Lcom/google/android/gms/internal/ads/zzfrg;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcdk;

    .line 283
    .line 284
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzcdk;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    const/16 v5, 0x109

    .line 288
    .line 289
    const/4 v6, -0x1

    .line 290
    invoke-virtual {v0, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzfrg;->zzn(Lcom/google/android/gms/internal/ads/zzfrf;II)Ljava/net/HttpURLConnection;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0}, Landroidx/activity/Wwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v3

    .line 298
    if-eqz v3, :cond_e

    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    const/16 v5, 0x190

    .line 305
    .line 306
    if-ge v3, v5, :cond_d

    .line 307
    .line 308
    goto :goto_9

    .line 309
    :cond_d
    const-string v13, "badUrl"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4

    .line 310
    .line 311
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    const-string v5, "HTTP request failed. Code: "

    .line 321
    .line 322
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 332
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    .line 333
    .line 334
    new-instance v5, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v6, "HTTP status code "

    .line 340
    .line 341
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v3, " at "

    .line 348
    .line 349
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v3

    .line 359
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 363
    :catch_0
    move-exception v0

    .line 364
    goto :goto_6

    .line 365
    :catch_1
    move-exception v0

    .line 366
    :goto_6
    move-object v3, v10

    .line 367
    goto/16 :goto_13

    .line 368
    .line 369
    :catch_2
    move-exception v0

    .line 370
    goto :goto_7

    .line 371
    :catch_3
    move-exception v0

    .line 372
    :goto_7
    move-object v4, v9

    .line 373
    goto :goto_6

    .line 374
    :catch_4
    move-exception v0

    .line 375
    :goto_8
    move-object v3, v10

    .line 376
    goto/16 :goto_12

    .line 377
    .line 378
    :catch_5
    move-exception v0

    .line 379
    goto :goto_8

    .line 380
    :cond_e
    :goto_9
    :try_start_4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-gez v5, :cond_f

    .line 385
    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 387
    .line 388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 389
    .line 390
    .line 391
    const-string v3, "Stream cache aborted, missing content-length header at "

    .line 392
    .line 393
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 404
    .line 405
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    const-string v3, "contentLengthMissing"

    .line 413
    .line 414
    invoke-virtual {v1, v2, v0, v3, v9}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-interface {v4, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 418
    .line 419
    .line 420
    return v8

    .line 421
    :cond_f
    sget-object v14, Lcom/google/android/gms/internal/ads/zzcdl;->zzf:Ljava/text/DecimalFormat;

    .line 422
    .line 423
    move v15, v8

    .line 424
    int-to-long v7, v5

    .line 425
    invoke-virtual {v14, v7, v8}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzs:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 430
    .line 431
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v6

    .line 439
    check-cast v6, Ljava/lang/Integer;

    .line 440
    .line 441
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 442
    .line 443
    .line 444
    move-result v7

    .line 445
    if-le v5, v7, :cond_10

    .line 446
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    .line 448
    .line 449
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 450
    .line 451
    .line 452
    const-string v5, "Content length "

    .line 453
    .line 454
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    const-string v5, " exceeds limit at "

    .line 461
    .line 462
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 473
    .line 474
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    .line 478
    .line 479
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .line 481
    .line 482
    const-string v5, "File too big for full file cache. Size: "

    .line 483
    .line 484
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v3

    .line 498
    const-string v5, "sizeExceeded"

    .line 499
    .line 500
    invoke-virtual {v1, v2, v3, v5, v0}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    invoke-interface {v4, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    return v15

    .line 507
    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .line 511
    .line 512
    const-string v6, "Caching "

    .line 513
    .line 514
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v3, " bytes from "

    .line 521
    .line 522
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v3

    .line 532
    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 533
    .line 534
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 538
    .line 539
    .line 540
    move-result-object v0

    .line 541
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    .line 542
    .line 543
    .line 544
    move-result-object v8

    .line 545
    new-instance v3, Ljava/io/FileOutputStream;

    .line 546
    .line 547
    invoke-direct {v3, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 548
    .line 549
    .line 550
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 551
    .line 552
    .line 553
    move-result-object v0

    .line 554
    const/high16 v4, 0x100000

    .line 555
    .line 556
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 557
    .line 558
    .line 559
    move-result-object v4

    .line 560
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 561
    .line 562
    .line 563
    move-result-object v17

    .line 564
    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 565
    .line 566
    .line 567
    move-result-wide v18

    .line 568
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzO:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 569
    .line 570
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 571
    .line 572
    .line 573
    move-result-object v15

    .line 574
    invoke-virtual {v15, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 575
    .line 576
    .line 577
    move-result-object v6

    .line 578
    check-cast v6, Ljava/lang/Long;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_11

    .line 579
    .line 580
    move-object/from16 v20, v10

    .line 581
    .line 582
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 583
    .line 584
    .line 585
    move-result-wide v9

    .line 586
    new-instance v15, Lcom/google/android/gms/ads/internal/util/zzbx;

    .line 587
    .line 588
    invoke-direct {v15, v9, v10}, Lcom/google/android/gms/ads/internal/util/zzbx;-><init>(J)V

    .line 589
    .line 590
    .line 591
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zzN:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 592
    .line 593
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 594
    .line 595
    .line 596
    move-result-object v9

    .line 597
    invoke-virtual {v9, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 598
    .line 599
    .line 600
    move-result-object v6

    .line 601
    check-cast v6, Ljava/lang/Long;

    .line 602
    .line 603
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 604
    .line 605
    .line 606
    move-result-wide v9

    .line 607
    const/4 v6, 0x0

    .line 608
    :goto_a
    invoke-interface {v8, v4}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 609
    .line 610
    .line 611
    move-result v21

    .line 612
    if-ltz v21, :cond_16

    .line 613
    .line 614
    add-int v6, v6, v21

    .line 615
    .line 616
    if-gt v6, v7, :cond_15

    .line 617
    .line 618
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 619
    .line 620
    .line 621
    :cond_11
    invoke-virtual {v0, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 622
    .line 623
    .line 624
    move-result v21

    .line 625
    if-gtz v21, :cond_11

    .line 626
    .line 627
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 628
    .line 629
    .line 630
    invoke-interface/range {v17 .. v17}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 631
    .line 632
    .line 633
    move-result-wide v21

    .line 634
    sub-long v21, v21, v18

    .line 635
    .line 636
    const-wide/16 v23, 0x3e8

    .line 637
    .line 638
    mul-long v23, v23, v9

    .line 639
    .line 640
    cmp-long v21, v21, v23

    .line 641
    .line 642
    if-gtz v21, :cond_14

    .line 643
    .line 644
    move-object/from16 v21, v0

    .line 645
    .line 646
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzcdl;->zzh:Z

    .line 647
    .line 648
    if-nez v0, :cond_13

    .line 649
    .line 650
    invoke-virtual {v15}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzb()Z

    .line 651
    .line 652
    .line 653
    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8

    .line 654
    if-eqz v0, :cond_12

    .line 655
    .line 656
    move-object/from16 v22, v3

    .line 657
    .line 658
    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    sget-object v0, Lcom/google/android/gms/ads/internal/util/client/zzf;->zza:Landroid/os/Handler;

    .line 663
    .line 664
    move-object/from16 v23, v0

    .line 665
    .line 666
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdc;

    .line 667
    .line 668
    move-object/from16 v24, v4

    .line 669
    .line 670
    move v4, v6

    .line 671
    const/4 v6, 0x0

    .line 672
    move-object/from16 v25, v23

    .line 673
    .line 674
    move/from16 v23, v7

    .line 675
    .line 676
    move-object/from16 v7, v25

    .line 677
    .line 678
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcdc;-><init>(Lcom/google/android/gms/internal/ads/zzcdi;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    .line 683
    .line 684
    goto :goto_b

    .line 685
    :catch_6
    move-exception v0

    .line 686
    goto :goto_d

    .line 687
    :catch_7
    move-exception v0

    .line 688
    goto :goto_d

    .line 689
    :cond_12
    move-object/from16 v22, v3

    .line 690
    .line 691
    move-object/from16 v24, v4

    .line 692
    .line 693
    move v4, v6

    .line 694
    move/from16 v23, v7

    .line 695
    .line 696
    :goto_b
    move v6, v4

    .line 697
    move-object/from16 v0, v21

    .line 698
    .line 699
    move-object/from16 v3, v22

    .line 700
    .line 701
    move/from16 v7, v23

    .line 702
    .line 703
    move-object/from16 v4, v24

    .line 704
    .line 705
    goto :goto_a

    .line 706
    :catch_8
    move-exception v0

    .line 707
    :goto_c
    move-object/from16 v22, v3

    .line 708
    .line 709
    goto :goto_d

    .line 710
    :catch_9
    move-exception v0

    .line 711
    goto :goto_c

    .line 712
    :cond_13
    move-object/from16 v22, v3

    .line 713
    .line 714
    const-string v13, "externalAbort"
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 715
    .line 716
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    .line 717
    .line 718
    const-string v3, "abort requested"

    .line 719
    .line 720
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 721
    .line 722
    .line 723
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_a

    .line 724
    :catch_a
    move-exception v0

    .line 725
    goto :goto_d

    .line 726
    :catch_b
    move-exception v0

    .line 727
    :goto_d
    move-object/from16 v3, v20

    .line 728
    .line 729
    :goto_e
    move-object/from16 v9, v22

    .line 730
    .line 731
    const/4 v4, 0x0

    .line 732
    goto/16 :goto_13

    .line 733
    .line 734
    :cond_14
    move-object/from16 v22, v3

    .line 735
    .line 736
    :try_start_9
    const-string v13, "downloadTimeout"
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6

    .line 737
    .line 738
    :try_start_a
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 739
    .line 740
    .line 741
    move-result-object v0

    .line 742
    new-instance v3, Ljava/lang/StringBuilder;

    .line 743
    .line 744
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    .line 746
    .line 747
    const-string v4, "Timeout exceeded. Limit: "

    .line 748
    .line 749
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    .line 751
    .line 752
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    .line 754
    .line 755
    const-string v0, " sec"

    .line 756
    .line 757
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v9
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_a

    .line 764
    :try_start_b
    new-instance v0, Ljava/io/IOException;

    .line 765
    .line 766
    const-string v3, "stream cache time limit exceeded"

    .line 767
    .line 768
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 769
    .line 770
    .line 771
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_c

    .line 772
    :catch_c
    move-exception v0

    .line 773
    goto :goto_f

    .line 774
    :catch_d
    move-exception v0

    .line 775
    :goto_f
    move-object v4, v9

    .line 776
    move-object/from16 v3, v20

    .line 777
    .line 778
    move-object/from16 v9, v22

    .line 779
    .line 780
    goto/16 :goto_13

    .line 781
    .line 782
    :cond_15
    move-object/from16 v22, v3

    .line 783
    .line 784
    move v4, v6

    .line 785
    :try_start_c
    const-string v13, "sizeExceeded"
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_6

    .line 786
    .line 787
    :try_start_d
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 788
    .line 789
    .line 790
    move-result-object v0

    .line 791
    new-instance v3, Ljava/lang/StringBuilder;

    .line 792
    .line 793
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 794
    .line 795
    .line 796
    const-string v4, "File too big for full file cache. Size: "

    .line 797
    .line 798
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v9
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_a

    .line 808
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    .line 809
    .line 810
    const-string v3, "stream cache file size limit exceeded"

    .line 811
    .line 812
    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 813
    .line 814
    .line 815
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_c

    .line 816
    :cond_16
    move-object/from16 v22, v3

    .line 817
    .line 818
    :try_start_f
    invoke-virtual/range {v22 .. v22}, Ljava/io/FileOutputStream;->close()V

    .line 819
    .line 820
    .line 821
    const/4 v0, 0x3

    .line 822
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzm(I)Z

    .line 823
    .line 824
    .line 825
    move-result v0

    .line 826
    if-eqz v0, :cond_17

    .line 827
    .line 828
    int-to-long v3, v6

    .line 829
    invoke-virtual {v14, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v0

    .line 833
    new-instance v3, Ljava/lang/StringBuilder;

    .line 834
    .line 835
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    .line 837
    .line 838
    const-string v4, "Preloaded "

    .line 839
    .line 840
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    .line 842
    .line 843
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    .line 845
    .line 846
    const-string v0, " bytes from "

    .line 847
    .line 848
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    .line 853
    .line 854
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 855
    .line 856
    .line 857
    move-result-object v0

    .line 858
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_6

    .line 859
    .line 860
    .line 861
    :cond_17
    move-object/from16 v3, v20

    .line 862
    .line 863
    const/4 v0, 0x1

    .line 864
    const/4 v15, 0x0

    .line 865
    :try_start_10
    invoke-virtual {v3, v0, v15}, Ljava/io/File;->setReadable(ZZ)Z

    .line 866
    .line 867
    .line 868
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    .line 869
    .line 870
    .line 871
    move-result v0

    .line 872
    if-eqz v0, :cond_18

    .line 873
    .line 874
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 875
    .line 876
    .line 877
    move-result-wide v4

    .line 878
    invoke-virtual {v11, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_e

    .line 879
    .line 880
    .line 881
    goto :goto_10

    .line 882
    :catch_e
    move-exception v0

    .line 883
    goto/16 :goto_e

    .line 884
    .line 885
    :catch_f
    move-exception v0

    .line 886
    goto/16 :goto_e

    .line 887
    .line 888
    :cond_18
    :try_start_11
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_e

    .line 889
    .line 890
    .line 891
    :catch_10
    :goto_10
    :try_start_12
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 892
    .line 893
    .line 894
    move-result-object v0

    .line 895
    invoke-virtual {v1, v2, v0, v6}, Lcom/google/android/gms/internal/ads/zzcdi;->zzh(Ljava/lang/String;Ljava/lang/String;I)V

    .line 896
    .line 897
    .line 898
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdl;->zze:Ljava/util/Set;

    .line 899
    .line 900
    invoke-interface {v0, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_e

    .line 901
    .line 902
    .line 903
    const/16 v16, 0x1

    .line 904
    .line 905
    return v16

    .line 906
    :catch_11
    move-exception v0

    .line 907
    :goto_11
    move-object/from16 v22, v3

    .line 908
    .line 909
    move-object v3, v10

    .line 910
    goto/16 :goto_e

    .line 911
    .line 912
    :catch_12
    move-exception v0

    .line 913
    goto :goto_11

    .line 914
    :goto_12
    const/4 v4, 0x0

    .line 915
    const/4 v9, 0x0

    .line 916
    :goto_13
    instance-of v5, v0, Ljava/lang/RuntimeException;

    .line 917
    .line 918
    if-eqz v5, :cond_19

    .line 919
    .line 920
    const-string v5, "VideoStreamFullFileCache.preload"

    .line 921
    .line 922
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 923
    .line 924
    .line 925
    move-result-object v6

    .line 926
    invoke-virtual {v6, v0, v5}, Lcom/google/android/gms/internal/ads/zzbzn;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 927
    .line 928
    .line 929
    :cond_19
    :try_start_13
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_13

    .line 930
    .line 931
    .line 932
    :catch_13
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzcdl;->zzh:Z

    .line 933
    .line 934
    if-eqz v5, :cond_1a

    .line 935
    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    .line 937
    .line 938
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 939
    .line 940
    .line 941
    const-string v5, "Preload aborted for URL \""

    .line 942
    .line 943
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    .line 948
    .line 949
    const-string v5, "\""

    .line 950
    .line 951
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 952
    .line 953
    .line 954
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 955
    .line 956
    .line 957
    move-result-object v0

    .line 958
    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 959
    .line 960
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    goto :goto_14

    .line 964
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    .line 965
    .line 966
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 967
    .line 968
    .line 969
    const-string v6, "Preload failed for URL \""

    .line 970
    .line 971
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    .line 973
    .line 974
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    .line 976
    .line 977
    const-string v6, "\""

    .line 978
    .line 979
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 980
    .line 981
    .line 982
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 983
    .line 984
    .line 985
    move-result-object v5

    .line 986
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 987
    .line 988
    invoke-static {v5, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 989
    .line 990
    .line 991
    :goto_14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 992
    .line 993
    .line 994
    move-result v0

    .line 995
    if-eqz v0, :cond_1b

    .line 996
    .line 997
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 998
    .line 999
    .line 1000
    move-result v0

    .line 1001
    if-nez v0, :cond_1b

    .line 1002
    .line 1003
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1008
    .line 1009
    .line 1010
    move-result-object v0

    .line 1011
    const-string v5, "Could not delete partial cache file at "

    .line 1012
    .line 1013
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v0

    .line 1017
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 1018
    .line 1019
    .line 1020
    :cond_1b
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 1021
    .line 1022
    .line 1023
    move-result-object v0

    .line 1024
    invoke-virtual {v1, v2, v0, v13, v4}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    .line 1026
    .line 1027
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcdl;->zze:Ljava/util/Set;

    .line 1028
    .line 1029
    invoke-interface {v0, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1030
    .line 1031
    .line 1032
    :goto_15
    const/4 v15, 0x0

    .line 1033
    return v15

    .line 1034
    :goto_16
    :try_start_14
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 1035
    throw v0

    .line 1036
    :cond_1c
    const-string v0, "noCacheDir"

    .line 1037
    .line 1038
    const/4 v3, 0x0

    .line 1039
    invoke-virtual {v1, v2, v3, v0, v3}, Lcom/google/android/gms/internal/ads/zzcdi;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    .line 1041
    .line 1042
    goto :goto_15
.end method
