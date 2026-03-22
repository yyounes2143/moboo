.class public final Lcom/google/android/gms/internal/ads/zzehx;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzedf;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdpd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdom;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zze:Ljava/util/concurrent/Executor;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzbjz;

.field private final zzh:Z

.field private final zzi:Lcom/google/android/gms/internal/ads/zzece;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdrx;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfcp;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdom;Lcom/google/android/gms/internal/ads/zzdpd;Lcom/google/android/gms/internal/ads/zzbjz;Lcom/google/android/gms/internal/ads/zzece;Lcom/google/android/gms/internal/ads/zzdrx;Lcom/google/android/gms/internal/ads/zzdsd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehx;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzd:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Lcom/google/android/gms/internal/ads/zzdom;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzb:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzg:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 17
    .line 18
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzjh:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzh:Z

    .line 35
    .line 36
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzi:Lcom/google/android/gms/internal/ads/zzece;

    .line 37
    .line 38
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzj:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 39
    .line 40
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzehx;->zzk:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzehx;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzdph;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v6, p1

    .line 4
    .line 5
    move-object/from16 v1, p2

    .line 6
    .line 7
    sget-object v14, Lcom/google/android/gms/internal/ads/zzbcv;->zzct:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v14}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzj:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdrl;->zzB:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzb:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 49
    .line 50
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzd:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 51
    .line 52
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzfcg;->zzb:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 53
    .line 54
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Lcom/google/android/gms/internal/ads/zzfbx;

    .line 55
    .line 56
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzfcp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 57
    .line 58
    invoke-virtual {v3, v5, v6, v2}, Lcom/google/android/gms/internal/ads/zzdpd;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfbx;)Lcom/google/android/gms/internal/ads/zzcfb;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    iget-boolean v2, v6, Lcom/google/android/gms/internal/ads/zzfbu;->zzW:Z

    .line 63
    .line 64
    invoke-interface {v8, v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzac(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzehx;->zza:Landroid/content/Context;

    .line 68
    .line 69
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/zzcfb;->zzF()Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    move-object/from16 v7, p3

    .line 74
    .line 75
    invoke-virtual {v7, v2, v5}, Lcom/google/android/gms/internal/ads/zzdph;->zza(Landroid/content/Context;Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v5, v14}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    check-cast v5, Ljava/lang/Boolean;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_1

    .line 93
    .line 94
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzj:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 95
    .line 96
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    sget-object v7, Lcom/google/android/gms/internal/ads/zzdrl;->zzC:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 101
    .line 102
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    invoke-interface {v9}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v9

    .line 114
    invoke-virtual {v5, v7, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 115
    .line 116
    .line 117
    :cond_1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcaf;

    .line 118
    .line 119
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcaf;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzc:Lcom/google/android/gms/internal/ads/zzdom;

    .line 123
    .line 124
    new-instance v5, Lcom/google/android/gms/internal/ads/zzcrn;

    .line 125
    .line 126
    const/4 v9, 0x0

    .line 127
    invoke-direct {v5, v1, v6, v9}, Lcom/google/android/gms/internal/ads/zzcrn;-><init>(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    move-object v1, v5

    .line 131
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 132
    .line 133
    move-object v10, v9

    .line 134
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzg:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 135
    .line 136
    move-object v11, v10

    .line 137
    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzh:Z

    .line 138
    .line 139
    move-object v12, v11

    .line 140
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzi:Lcom/google/android/gms/internal/ads/zzece;

    .line 141
    .line 142
    move-object v13, v12

    .line 143
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzj:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 144
    .line 145
    move-object/from16 v16, v13

    .line 146
    .line 147
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzehx;->zzk:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 148
    .line 149
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdoj;

    .line 150
    .line 151
    move-object/from16 v17, v1

    .line 152
    .line 153
    new-instance v1, Lcom/google/android/gms/internal/ads/zzehw;

    .line 154
    .line 155
    move-object/from16 p4, v14

    .line 156
    .line 157
    move-object/from16 v14, v17

    .line 158
    .line 159
    invoke-direct/range {v1 .. v13}, Lcom/google/android/gms/internal/ads/zzehw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpd;Lcom/google/android/gms/internal/ads/zzfcp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzbjz;ZLcom/google/android/gms/internal/ads/zzece;Lcom/google/android/gms/internal/ads/zzdrx;Lcom/google/android/gms/internal/ads/zzdsd;)V

    .line 160
    .line 161
    .line 162
    invoke-direct {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzdoj;-><init>(Lcom/google/android/gms/internal/ads/zzdgi;Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v15, v14, v0}, Lcom/google/android/gms/internal/ads/zzdom;->zzd(Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzdoj;)Lcom/google/android/gms/internal/ads/zzdoi;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzcaf;->zzc(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    move-object/from16 v2, p4

    .line 177
    .line 178
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    check-cast v1, Ljava/lang/Boolean;

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    if-eqz v1, :cond_2

    .line 189
    .line 190
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrl;->zzD:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 195
    .line 196
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v2

    .line 200
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 205
    .line 206
    .line 207
    move-result-wide v3

    .line 208
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 209
    .line 210
    .line 211
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzg()Lcom/google/android/gms/internal/ads/zzdeh;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-static {v8, v1}, Lcom/google/android/gms/internal/ads/zzbko;->zzb(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzbkn;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcqy;->zzc()Lcom/google/android/gms/internal/ads/zzcwl;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    new-instance v2, Lcom/google/android/gms/internal/ads/zzehq;

    .line 223
    .line 224
    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/ads/zzehq;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 225
    .line 226
    .line 227
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcaa;->zzg:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 228
    .line 229
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdbo;->zzo(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzl()Lcom/google/android/gms/internal/ads/zzdpc;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    const/4 v2, 0x1

    .line 237
    if-eq v2, v10, :cond_3

    .line 238
    .line 239
    move-object/from16 v9, v16

    .line 240
    .line 241
    :cond_3
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    invoke-virtual {v1, v8, v2, v9, v3}, Lcom/google/android/gms/internal/ads/zzdpc;->zzi(Lcom/google/android/gms/internal/ads/zzcfb;ZLcom/google/android/gms/internal/ads/zzbjz;Landroid/os/Bundle;)V

    .line 246
    .line 247
    .line 248
    iget-object v1, v6, Lcom/google/android/gms/internal/ads/zzfbu;->zzs:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 249
    .line 250
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Ljava/lang/String;

    .line 251
    .line 252
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzfz:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 253
    .line 254
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 255
    .line 256
    .line 257
    move-result-object v5

    .line 258
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    check-cast v4, Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-eqz v4, :cond_4

    .line 269
    .line 270
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzm()Lcom/google/android/gms/internal/ads/zzecy;

    .line 271
    .line 272
    .line 273
    move-result-object v4

    .line 274
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzecy;->zze(Z)Z

    .line 275
    .line 276
    .line 277
    move-result v2

    .line 278
    if-eqz v2, :cond_4

    .line 279
    .line 280
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzcgm;->zza(Lcom/google/android/gms/internal/ads/zzfbu;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    filled-new-array {v2}, [Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzcgm;->zzb(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v3

    .line 292
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzl()Lcom/google/android/gms/internal/ads/zzdpc;

    .line 293
    .line 294
    .line 295
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzfbz;->zzb:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 298
    .line 299
    .line 300
    move-result-object v2

    .line 301
    invoke-static {v8, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdpc;->zzj(Lcom/google/android/gms/internal/ads/zzcfb;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    new-instance v2, Lcom/google/android/gms/internal/ads/zzehr;

    .line 306
    .line 307
    move-object/from16 v3, p0

    .line 308
    .line 309
    invoke-direct {v2, v3, v8, v6, v0}, Lcom/google/android/gms/internal/ads/zzehr;-><init>(Lcom/google/android/gms/internal/ads/zzehx;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzdoi;)V

    .line 310
    .line 311
    .line 312
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/zzehx;->zze:Ljava/util/concurrent/Executor;

    .line 313
    .line 314
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzgcy;->zzm(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzfur;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzfbu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdph;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdph;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/google/android/gms/internal/ads/zzehs;

    .line 12
    .line 13
    invoke-direct {v2, p0, p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzehs;-><init>(Lcom/google/android/gms/internal/ads/zzehx;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfcg;Lcom/google/android/gms/internal/ads/zzdph;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehx;->zze:Ljava/util/concurrent/Executor;

    .line 17
    .line 18
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzgcy;->zzn(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgcf;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeht;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzeht;-><init>(Lcom/google/android/gms/internal/ads/zzdph;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p2, v1, p1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 28
    .line 29
    .line 30
    return-object p2
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
