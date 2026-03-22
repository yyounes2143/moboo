.class final Lcom/google/android/gms/internal/ads/zzfjq;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcu;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfhc;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfhn;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcyd;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzfjr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfjr;Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfhn;Lcom/google/android/gms/internal/ads/zzcyd;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzfhc;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzb:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzc:Lcom/google/android/gms/internal/ads/zzcyd;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzd:Lcom/google/android/gms/internal/ads/zzfjr;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzfhc;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzb:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzd:Lcom/google/android/gms/internal/ads/zzfjr;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjr;->zzc(Lcom/google/android/gms/internal/ads/zzfjr;)Lcom/google/android/gms/internal/ads/zzfhq;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfhc;->zzm()Lcom/google/android/gms/internal/ads/zzfhg;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhq;->zzc(Lcom/google/android/gms/internal/ads/zzfhg;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zza(Lcom/google/android/gms/internal/ads/zzfhc;)Lcom/google/android/gms/internal/ads/zzfhn;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfhn;->zzh()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzfhc;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    sget-object v3, Lcom/google/android/gms/ads/internal/util/client/zzt;->zza:Lcom/google/android/gms/ads/internal/util/client/zzt;

    .line 10
    .line 11
    if-ne p1, v3, :cond_0

    .line 12
    .line 13
    move p1, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move p1, v1

    .line 16
    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzfhc;->zzg(Z)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzb:Lcom/google/android/gms/internal/ads/zzfhn;

    .line 20
    .line 21
    if-nez p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzd:Lcom/google/android/gms/internal/ads/zzfjr;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfjr;->zzc(Lcom/google/android/gms/internal/ads/zzfjr;)Lcom/google/android/gms/internal/ads/zzfhq;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzfhc;->zzm()Lcom/google/android/gms/internal/ads/zzfhg;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhq;->zzc(Lcom/google/android/gms/internal/ads/zzfhg;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfhn;->zza(Lcom/google/android/gms/internal/ads/zzfhc;)Lcom/google/android/gms/internal/ads/zzfhn;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzh()V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzc:Lcom/google/android/gms/internal/ads/zzcyd;

    .line 44
    .line 45
    if-eqz p1, :cond_12

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfjq;->zzd:Lcom/google/android/gms/internal/ads/zzfjr;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfjr;->zzb(Lcom/google/android/gms/internal/ads/zzfjr;)Lcom/google/android/gms/ads/internal/util/client/zzu;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/util/client/zzu;->zzb()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    goto/16 :goto_9

    .line 64
    .line 65
    :cond_3
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 66
    .line 67
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzt;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    .line 72
    const-string v0, "type"

    .line 73
    .line 74
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    const-string v4, "precision"

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    const-string v5, "currency"

    .line 85
    .line 86
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v9

    .line 90
    const-string v5, "value"

    .line 91
    .line 92
    const-wide/16 v6, 0x0

    .line 93
    .line 94
    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 95
    .line 96
    .line 97
    move-result-wide v5

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    const v7, 0x10576

    .line 103
    .line 104
    .line 105
    const/4 v8, -0x1

    .line 106
    const/4 v10, 0x2

    .line 107
    if-eq v3, v7, :cond_6

    .line 108
    .line 109
    const v7, 0x10580

    .line 110
    .line 111
    .line 112
    if-eq v3, v7, :cond_5

    .line 113
    .line 114
    const v7, 0x506e232d

    .line 115
    .line 116
    .line 117
    if-eq v3, v7, :cond_4

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    const-string v3, "ONE_PIXEL"

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    move v0, v10

    .line 129
    goto :goto_3

    .line 130
    :cond_5
    const-string v3, "CPM"

    .line 131
    .line 132
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    move v0, v1

    .line 139
    goto :goto_3

    .line 140
    :cond_6
    const-string v3, "CPC"

    .line 141
    .line 142
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_7

    .line 147
    .line 148
    move v0, v2

    .line 149
    goto :goto_3

    .line 150
    :cond_7
    :goto_2
    move v0, v8

    .line 151
    :goto_3
    const/4 v3, 0x3

    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    if-eq v0, v2, :cond_9

    .line 155
    .line 156
    if-eq v0, v10, :cond_8

    .line 157
    .line 158
    move v7, v1

    .line 159
    goto :goto_4

    .line 160
    :cond_8
    const-wide/16 v11, 0x3e8

    .line 161
    .line 162
    :try_start_1
    div-long/2addr v5, v11

    .line 163
    move v7, v3

    .line 164
    goto :goto_4

    .line 165
    :catch_0
    move-exception v0

    .line 166
    move-object p1, v0

    .line 167
    goto :goto_8

    .line 168
    :cond_9
    move v7, v10

    .line 169
    goto :goto_4

    .line 170
    :cond_a
    move v7, v2

    .line 171
    :goto_4
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    const v11, -0x7f136fe4

    .line 176
    .line 177
    .line 178
    if-eq v0, v11, :cond_d

    .line 179
    .line 180
    const v11, 0x17cbce3b

    .line 181
    .line 182
    .line 183
    if-eq v0, v11, :cond_c

    .line 184
    .line 185
    const v11, 0x4bc5cce6    # 2.5926092E7f

    .line 186
    .line 187
    .line 188
    if-eq v0, v11, :cond_b

    .line 189
    .line 190
    goto :goto_5

    .line 191
    :cond_b
    const-string v0, "PUBLISHER_PROVIDED"

    .line 192
    .line 193
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_e

    .line 198
    .line 199
    move v8, v2

    .line 200
    goto :goto_5

    .line 201
    :cond_c
    const-string v0, "PRECISE"

    .line 202
    .line 203
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    if-eqz v0, :cond_e

    .line 208
    .line 209
    move v8, v10

    .line 210
    goto :goto_5

    .line 211
    :cond_d
    const-string v0, "ESTIMATED"

    .line 212
    .line 213
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_e

    .line 218
    .line 219
    move v8, v1

    .line 220
    :cond_e
    :goto_5
    if-eqz v8, :cond_11

    .line 221
    .line 222
    if-eq v8, v2, :cond_10

    .line 223
    .line 224
    if-eq v8, v10, :cond_f

    .line 225
    .line 226
    move v8, v1

    .line 227
    :goto_6
    move-wide v10, v5

    .line 228
    goto :goto_7

    .line 229
    :cond_f
    move v8, v3

    .line 230
    goto :goto_6

    .line 231
    :cond_10
    move v8, v10

    .line 232
    goto :goto_6

    .line 233
    :cond_11
    move v8, v2

    .line 234
    goto :goto_6

    .line 235
    :goto_7
    :try_start_2
    new-instance v6, Lcom/google/android/gms/ads/internal/client/zzt;

    .line 236
    .line 237
    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/ads/internal/client/zzt;-><init>(IILjava/lang/String;J)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzcyd;->zza(Lcom/google/android/gms/ads/internal/client/zzt;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :goto_8
    const-string v0, "UrlPinger.pingUrl"

    .line 245
    .line 246
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzn;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzbzn;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    :cond_12
    :goto_9
    return-void
.end method
