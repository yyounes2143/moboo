.class public final Lcom/google/android/gms/internal/ads/zzfjn;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzegu;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfch;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfci;

.field private final zzh:Lcom/google/android/gms/common/util/Clock;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzavl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzegu;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfch;Lcom/google/android/gms/internal/ads/zzfci;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzavl;)V
    .locals 0
    .param p6    # Lcom/google/android/gms/internal/ads/zzfch;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/google/android/gms/internal/ads/zzfci;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zza:Lcom/google/android/gms/internal/ads/zzegu;

    .line 5
    .line 6
    iget-object p1, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzc:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzd:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzf:Lcom/google/android/gms/internal/ads/zzfch;

    .line 17
    .line 18
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzg:Lcom/google/android/gms/internal/ads/zzfci;

    .line 19
    .line 20
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Lcom/google/android/gms/common/util/Clock;

    .line 21
    .line 22
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzi:Lcom/google/android/gms/internal/ads/zzavl;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzfch;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfch;->zza:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzg(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzfch;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfch;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfjn;->zzg(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method private static zzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, ""

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzk()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const-string p0, "fakeForAdDebugLog"

    .line 17
    .line 18
    :cond_1
    return-object p0
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .param p2    # Lcom/google/android/gms/internal/ads/zzfbu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v4, ""

    .line 2
    .line 3
    const-string v5, ""

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v6, p3

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfjn;->zze(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .param p2    # Lcom/google/android/gms/internal/ads/zzfbu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p6

    .line 10
    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_8

    .line 15
    .line 16
    const-string v1, "1"

    .line 17
    .line 18
    const-string v2, "0"

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    if-eq v3, p3, :cond_0

    .line 22
    .line 23
    move-object v4, v2

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move-object v4, v1

    .line 26
    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    check-cast v5, Ljava/lang/String;

    .line 31
    .line 32
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzfcg;->zza:Lcom/google/android/gms/internal/ads/zzfcd;

    .line 33
    .line 34
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfcd;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 35
    .line 36
    const-string v7, "@gw_adlocid@"

    .line 37
    .line 38
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    const-string v6, "@gw_adnetrefresh@"

    .line 45
    .line 46
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Ljava/lang/String;

    .line 51
    .line 52
    const-string v6, "@gw_sdkver@"

    .line 53
    .line 54
    invoke-static {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    if-eqz p2, :cond_2

    .line 59
    .line 60
    const-string v5, "@gw_qdata@"

    .line 61
    .line 62
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzy:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "@gw_adnetid@"

    .line 69
    .line 70
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzx:Ljava/lang/String;

    .line 71
    .line 72
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    const-string v5, "@gw_allocid@"

    .line 77
    .line 78
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzw:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v6, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzaw:Ljava/util/Map;

    .line 87
    .line 88
    iget-boolean v7, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzW:Z

    .line 89
    .line 90
    invoke-static {v4, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzbyl;->zzc(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcv;->zznB:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 95
    .line 96
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    check-cast v6, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_2

    .line 111
    .line 112
    iget v6, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zze:I

    .line 113
    .line 114
    const/4 v7, 0x4

    .line 115
    if-ne v6, v7, :cond_2

    .line 116
    .line 117
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 118
    .line 119
    .line 120
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eq v3, v5, :cond_1

    .line 125
    .line 126
    move-object v1, v2

    .line 127
    :cond_1
    const-string v2, "@gw_aps@"

    .line 128
    .line 129
    invoke-static {v4, v2, v1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zza:Lcom/google/android/gms/internal/ads/zzegu;

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zzg()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    const-string v5, "@gw_adnetstatus@"

    .line 140
    .line 141
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzegu;->zza()J

    .line 146
    .line 147
    .line 148
    move-result-wide v4

    .line 149
    const/16 v1, 0xa

    .line 150
    .line 151
    invoke-static {v4, v5, v1}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v4, "@gw_ttr@"

    .line 156
    .line 157
    invoke-static {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzc:Ljava/lang/String;

    .line 162
    .line 163
    const-string v4, "@gw_seqnum@"

    .line 164
    .line 165
    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzd:Ljava/lang/String;

    .line 170
    .line 171
    const-string v4, "@gw_sessid@"

    .line 172
    .line 173
    invoke-static {v1, v4, v2}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zzdO:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 178
    .line 179
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 180
    .line 181
    .line 182
    move-result-object v4

    .line 183
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    const/4 v4, 0x0

    .line 194
    if-eqz v2, :cond_3

    .line 195
    .line 196
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-nez v2, :cond_3

    .line 201
    .line 202
    move v4, v3

    .line 203
    :cond_3
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    xor-int/lit8 v5, v2, 0x1

    .line 208
    .line 209
    if-nez v4, :cond_4

    .line 210
    .line 211
    if-nez v2, :cond_7

    .line 212
    .line 213
    goto :goto_2

    .line 214
    :cond_4
    move v3, v5

    .line 215
    :goto_2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzi:Lcom/google/android/gms/internal/ads/zzavl;

    .line 220
    .line 221
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzavl;->zzf(Landroid/net/Uri;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_7

    .line 226
    .line 227
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    if-eqz v4, :cond_5

    .line 236
    .line 237
    const-string v2, "ms"

    .line 238
    .line 239
    invoke-virtual {v1, v2, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    :cond_5
    if-eqz v3, :cond_6

    .line 244
    .line 245
    const-string v2, "attok"

    .line 246
    .line 247
    invoke-virtual {v1, v2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    :cond_6
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    :cond_7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_8
    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzfbu;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbvx;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzh:Lcom/google/android/gms/common/util/Clock;

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    :try_start_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbvx;->zzc()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbvx;->zzb()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzdP:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/Boolean;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzg:Lcom/google/android/gms/internal/ads/zzfci;

    .line 43
    .line 44
    if-nez v4, :cond_0

    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfva;->zzc()Lcom/google/android/gms/internal/ads/zzfva;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfci;->zza:Lcom/google/android/gms/internal/ads/zzfch;

    .line 52
    .line 53
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfva;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfva;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzf:Lcom/google/android/gms/internal/ads/zzfch;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfjl;

    .line 62
    .line 63
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfjl;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfva;->zza(Lcom/google/android/gms/internal/ads/zzfur;)Lcom/google/android/gms/internal/ads/zzfva;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    const-string v6, ""

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfva;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    check-cast v5, Ljava/lang/String;

    .line 77
    .line 78
    new-instance v7, Lcom/google/android/gms/internal/ads/zzfjm;

    .line 79
    .line 80
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzfjm;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzfva;->zza(Lcom/google/android/gms/internal/ads/zzfur;)Lcom/google/android/gms/internal/ads/zzfva;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzfva;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    check-cast v4, Ljava/lang/String;

    .line 92
    .line 93
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 98
    .line 99
    .line 100
    move-result v6

    .line 101
    if-eqz v6, :cond_2

    .line 102
    .line 103
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    check-cast v6, Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    const-string v8, "@gw_rwd_userid@"

    .line 114
    .line 115
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v7

    .line 123
    const-string v8, "@gw_rwd_custom_data@"

    .line 124
    .line 125
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v6

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const-string v8, "@gw_tmstmp@"

    .line 134
    .line 135
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    const-string v8, "@gw_rwd_itm@"

    .line 144
    .line 145
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    const-string v7, "@gw_rwd_amt@"

    .line 150
    .line 151
    invoke-static {v6, v7, p3}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zzb:Ljava/lang/String;

    .line 156
    .line 157
    const-string v8, "@gw_sdkver@"

    .line 158
    .line 159
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjn;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfjn;->zze:Landroid/content/Context;

    .line 164
    .line 165
    iget-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzfbu;->zzW:Z

    .line 166
    .line 167
    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzfbu;->zzaw:Ljava/util/Map;

    .line 168
    .line 169
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzbyl;->zzc(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v6

    .line 173
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_2
    return-object v0

    .line 178
    :catch_0
    move-exception p1

    .line 179
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 180
    .line 181
    const-string p2, "Unable to determine award type and amount."

    .line 182
    .line 183
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    .line 185
    .line 186
    return-object v0
.end method
