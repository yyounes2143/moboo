.class public final Lcom/google/android/gms/internal/ads/zzeeg;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedf;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcpu;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdpd;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfur;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdrx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpu;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdpd;Lcom/google/android/gms/internal/ads/zzfcp;Lcom/google/android/gms/internal/ads/zzfur;Lcom/google/android/gms/internal/ads/zzdrx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzb:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zza:Lcom/google/android/gms/internal/ads/zzcpu;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzc:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzd:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzf:Lcom/google/android/gms/internal/ads/zzfur;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzg:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzeeg;Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbcv;->zzct:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzg:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrl;->zzB:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzb:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzu:Ljava/util/List;

    .line 45
    .line 46
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfcv;->zza(Landroid/content/Context;Ljava/util/List;)Lcom/google/android/gms/ads/internal/client/zzr;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzc:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 51
    .line 52
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzfcg;->zzb:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 53
    .line 54
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Lcom/google/android/gms/internal/ads/zzfbx;

    .line 55
    .line 56
    invoke-virtual {v2, v1, p2, v3}, Lcom/google/android/gms/internal/ads/zzdpd;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfbx;)Lcom/google/android/gms/internal/ads/zzcfb;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzW:Z

    .line 61
    .line 62
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzac(Z)V

    .line 63
    .line 64
    .line 65
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbcv;->zzie:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 66
    .line 67
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/Boolean;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_1

    .line 82
    .line 83
    iget-boolean v3, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzag:Z

    .line 84
    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzF()Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-static {v0, v3, p2}, Lcom/google/android/gms/internal/ads/zzcqj;->zza(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfbu;)Lcom/google/android/gms/internal/ads/zzcqj;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzF()Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzf:Lcom/google/android/gms/internal/ads/zzfur;

    .line 101
    .line 102
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdpg;

    .line 103
    .line 104
    invoke-interface {v4, p2}, Lcom/google/android/gms/internal/ads/zzfur;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    check-cast v4, Lcom/google/android/gms/ads/internal/util/zzau;

    .line 109
    .line 110
    invoke-direct {v5, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdpg;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/google/android/gms/ads/internal/util/zzau;)V

    .line 111
    .line 112
    .line 113
    move-object v0, v5

    .line 114
    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/lang/Boolean;

    .line 123
    .line 124
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-eqz v3, :cond_2

    .line 129
    .line 130
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzg:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 131
    .line 132
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdrl;->zzC:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 147
    .line 148
    .line 149
    move-result-wide v5

    .line 150
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 151
    .line 152
    .line 153
    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zza:Lcom/google/android/gms/internal/ads/zzcpu;

    .line 154
    .line 155
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcrn;

    .line 156
    .line 157
    const/4 v5, 0x0

    .line 158
    invoke-direct {v4, p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzcrn;-><init>(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcow;

    .line 162
    .line 163
    new-instance v6, Lcom/google/android/gms/internal/ads/zzeea;

    .line 164
    .line 165
    invoke-direct {v6, v2}, Lcom/google/android/gms/internal/ads/zzeea;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfcv;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfbv;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-direct {p1, v0, v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzcow;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzcqv;Lcom/google/android/gms/internal/ads/zzfbv;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v4, p1}, Lcom/google/android/gms/internal/ads/zzcpu;->zza(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzcow;)Lcom/google/android/gms/internal/ads/zzcoq;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object p3

    .line 187
    check-cast p3, Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    if-eqz p3, :cond_3

    .line 194
    .line 195
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzg:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 196
    .line 197
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 198
    .line 199
    .line 200
    move-result-object p3

    .line 201
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrl;->zzD:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 212
    .line 213
    .line 214
    move-result-wide v3

    .line 215
    invoke-virtual {p3, v0, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 216
    .line 217
    .line 218
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoq;->zzi()Lcom/google/android/gms/internal/ads/zzdpc;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzg:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 223
    .line 224
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    const/4 v3, 0x0

    .line 229
    invoke-virtual {p3, v2, v3, v5, v1}, Lcom/google/android/gms/internal/ads/zzdpc;->zzi(Lcom/google/android/gms/internal/ads/zzcfb;ZLcom/google/android/gms/internal/ads/zzbjz;Landroid/os/Bundle;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcqy;->zzc()Lcom/google/android/gms/internal/ads/zzcwl;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeeb;

    .line 237
    .line 238
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzeeb;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 239
    .line 240
    .line 241
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcaa;->zzg:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 242
    .line 243
    invoke-virtual {p3, v1, v3}, Lcom/google/android/gms/internal/ads/zzdbo;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 244
    .line 245
    .line 246
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzs:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 247
    .line 248
    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Ljava/lang/String;

    .line 249
    .line 250
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzfz:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 251
    .line 252
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    check-cast v4, Ljava/lang/Boolean;

    .line 261
    .line 262
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 263
    .line 264
    .line 265
    move-result v4

    .line 266
    if-eqz v4, :cond_4

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoq;->zzl()Lcom/google/android/gms/internal/ads/zzecy;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    const/4 v5, 0x1

    .line 273
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzecy;->zze(Z)Z

    .line 274
    .line 275
    .line 276
    move-result v4

    .line 277
    if-eqz v4, :cond_4

    .line 278
    .line 279
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Lcom/google/android/gms/internal/ads/zzfbu;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    filled-new-array {v4}, [Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    invoke-static {v1, v4}, Lcom/google/android/gms/internal/ads/zzcgm;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcoq;->zzi()Lcom/google/android/gms/internal/ads/zzdpc;

    .line 292
    .line 293
    .line 294
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfbz;->zzb:Ljava/lang/String;

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v2, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzdpc;->zzj(Lcom/google/android/gms/internal/ads/zzcfb;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 301
    .line 302
    .line 303
    move-result-object p3

    .line 304
    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzM:Z

    .line 305
    .line 306
    if-eqz p2, :cond_5

    .line 307
    .line 308
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeec;

    .line 309
    .line 310
    invoke-direct {p2, v2}, Lcom/google/android/gms/internal/ads/zzeec;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Ljava/util/concurrent/Executor;

    .line 314
    .line 315
    invoke-interface {p3, p2, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 316
    .line 317
    .line 318
    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzeed;

    .line 319
    .line 320
    invoke-direct {p2, p0, v2}, Lcom/google/android/gms/internal/ads/zzeed;-><init>(Lcom/google/android/gms/internal/ads/zzeeg;Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 321
    .line 322
    .line 323
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Ljava/util/concurrent/Executor;

    .line 324
    .line 325
    invoke-interface {p3, p2, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 326
    .line 327
    .line 328
    new-instance p0, Lcom/google/android/gms/internal/ads/zzeee;

    .line 329
    .line 330
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeee;-><init>(Lcom/google/android/gms/internal/ads/zzcoq;)V

    .line 331
    .line 332
    .line 333
    invoke-static {p3, p0, v3}, Lcom/google/android/gms/internal/ads/zzgcy;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfur;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 334
    .line 335
    .line 336
    move-result-object p0

    .line 337
    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzeeg;Lcom/google/android/gms/internal/ads/zzcfb;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzab()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zzd:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 5
    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzq()Lcom/google/android/gms/internal/ads/zzcgd;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcp;->zza:Lcom/google/android/gms/ads/internal/client/zzfw;

    .line 11
    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzcgd;->zzs(Lcom/google/android/gms/ads/internal/client/zzfw;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbcv;->zzbv:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 20
    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->isAttachedToWindow()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    if-nez p0, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->onPause()V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x1

    .line 47
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzav(Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeef;

    .line 7
    .line 8
    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeef;-><init>(Lcom/google/android/gms/internal/ads/zzeeg;Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeeg;->zze:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgcf;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfbu;->zzs:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method
