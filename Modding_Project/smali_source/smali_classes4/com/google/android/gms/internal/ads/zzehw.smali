.class final Lcom/google/android/gms/internal/ads/zzehw;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgi;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdpd;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcp;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfbu;

.field private final zzf:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcfb;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbjz;

.field private final zzi:Z

.field private final zzj:Lcom/google/android/gms/internal/ads/zzece;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdrx;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdsd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpd;Lcom/google/android/gms/internal/ads/zzfcp;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzbjz;ZLcom/google/android/gms/internal/ads/zzece;Lcom/google/android/gms/internal/ads/zzdrx;Lcom/google/android/gms/internal/ads/zzdsd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehw;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzb:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzc:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehw;->zze:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzg:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzh:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 19
    .line 20
    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzi:Z

    .line 21
    .line 22
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzj:Lcom/google/android/gms/internal/ads/zzece;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzk:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzehw;->zzl:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzfbu;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehw;->zze:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwg;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgcy;->zzq(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/zzdoi;

    .line 10
    .line 11
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzehw;->zze:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 12
    .line 13
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzg:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 14
    .line 15
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaG()Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzbb:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 25
    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

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
    if-eqz v4, :cond_2

    .line 41
    .line 42
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzb:Lcom/google/android/gms/internal/ads/zzdpd;

    .line 43
    .line 44
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzc:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 45
    .line 46
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcp;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 47
    .line 48
    invoke-virtual {v3, v4, v6, v6}, Lcom/google/android/gms/internal/ads/zzdpd;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfbu;Lcom/google/android/gms/internal/ads/zzfbx;)Lcom/google/android/gms/internal/ads/zzcfb;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzg()Lcom/google/android/gms/internal/ads/zzdeh;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbko;->zzb(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzbkn;)V

    .line 57
    .line 58
    .line 59
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdph;

    .line 60
    .line 61
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdph;-><init>()V

    .line 62
    .line 63
    .line 64
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzehw;->zza:Landroid/content/Context;

    .line 65
    .line 66
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzF()Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzdph;->zza(Landroid/content/Context;Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzl()Lcom/google/android/gms/internal/ads/zzdpc;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzi:Z

    .line 78
    .line 79
    if-eqz v8, :cond_1

    .line 80
    .line 81
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzh:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    goto/16 :goto_6

    .line 86
    .line 87
    :cond_1
    move-object v8, v6

    .line 88
    :goto_0
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzk:Lcom/google/android/gms/internal/ads/zzdrx;

    .line 89
    .line 90
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdrx;->zza()Landroid/os/Bundle;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v7, v3, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzdpc;->zzi(Lcom/google/android/gms/internal/ads/zzcfb;ZLcom/google/android/gms/internal/ads/zzbjz;Landroid/os/Bundle;)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    new-instance v8, Lcom/google/android/gms/internal/ads/zzehu;

    .line 102
    .line 103
    invoke-direct {v8, v4, v3}, Lcom/google/android/gms/internal/ads/zzehu;-><init>(Lcom/google/android/gms/internal/ads/zzdph;Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 104
    .line 105
    .line 106
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzcgt;->zzC(Lcom/google/android/gms/internal/ads/zzcgr;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzN()Lcom/google/android/gms/internal/ads/zzcgt;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    new-instance v7, Lcom/google/android/gms/internal/ads/zzehv;

    .line 114
    .line 115
    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzehv;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zzcgt;->zzK(Lcom/google/android/gms/internal/ads/zzcgs;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzs:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 122
    .line 123
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfbz;->zzb:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Ljava/lang/String;

    .line 126
    .line 127
    invoke-interface {v3, v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzcfb;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcfn; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    :cond_2
    :goto_1
    move-object v10, v3

    .line 131
    invoke-interface {v10, v5}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaq(Z)V

    .line 132
    .line 133
    .line 134
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzi:Z

    .line 135
    .line 136
    new-instance v14, Lcom/google/android/gms/ads/internal/zzl;

    .line 137
    .line 138
    const/4 v3, 0x0

    .line 139
    if-eqz v2, :cond_3

    .line 140
    .line 141
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzh:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 142
    .line 143
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbjz;->zze(Z)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    move v12, v4

    .line 148
    goto :goto_2

    .line 149
    :cond_3
    move v12, v3

    .line 150
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 151
    .line 152
    .line 153
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzehw;->zza:Landroid/content/Context;

    .line 154
    .line 155
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzJ(Landroid/content/Context;)Z

    .line 156
    .line 157
    .line 158
    move-result v13

    .line 159
    if-eqz v2, :cond_4

    .line 160
    .line 161
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzh:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbjz;->zzd()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    :cond_4
    if-eqz v2, :cond_5

    .line 168
    .line 169
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzh:Lcom/google/android/gms/internal/ads/zzbjz;

    .line 170
    .line 171
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjz;->zza()F

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    :goto_3
    move v15, v2

    .line 176
    goto :goto_4

    .line 177
    :cond_5
    const/4 v2, 0x0

    .line 178
    goto :goto_3

    .line 179
    :goto_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzehw;->zze:Lcom/google/android/gms/internal/ads/zzfbu;

    .line 180
    .line 181
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzO:Z

    .line 182
    .line 183
    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzP:Z

    .line 184
    .line 185
    const/16 v16, -0x1

    .line 186
    .line 187
    move/from16 v17, p1

    .line 188
    .line 189
    move/from16 v18, v4

    .line 190
    .line 191
    move/from16 v19, v7

    .line 192
    .line 193
    move-object v11, v14

    .line 194
    move v14, v3

    .line 195
    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    .line 196
    .line 197
    .line 198
    move-object v14, v11

    .line 199
    if-eqz p3, :cond_6

    .line 200
    .line 201
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwg;->zzf()V

    .line 202
    .line 203
    .line 204
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzj()Lcom/google/android/gms/ads/internal/overlay/zzn;

    .line 205
    .line 206
    .line 207
    move-object v3, v6

    .line 208
    new-instance v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdoi;->zzh()Lcom/google/android/gms/internal/ads/zzdfx;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    iget v11, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzQ:I

    .line 215
    .line 216
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 217
    .line 218
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzB:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzs:Lcom/google/android/gms/internal/ads/zzfbz;

    .line 221
    .line 222
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfbz;->zzb:Ljava/lang/String;

    .line 223
    .line 224
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbz;->zza:Ljava/lang/String;

    .line 225
    .line 226
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzc:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 227
    .line 228
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfbu;->zzb()Z

    .line 229
    .line 230
    .line 231
    move-result v2

    .line 232
    if-eqz v2, :cond_7

    .line 233
    .line 234
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzj:Lcom/google/android/gms/internal/ads/zzece;

    .line 235
    .line 236
    move-object/from16 v19, v2

    .line 237
    .line 238
    goto :goto_5

    .line 239
    :cond_7
    move-object/from16 v19, v3

    .line 240
    .line 241
    :goto_5
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzfcp;->zzf:Ljava/lang/String;

    .line 242
    .line 243
    invoke-interface {v10}, Lcom/google/android/gms/internal/ads/zzcbw;->zzr()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v20

    .line 247
    const/4 v7, 0x0

    .line 248
    const/4 v9, 0x0

    .line 249
    move-object/from16 v18, p3

    .line 250
    .line 251
    move-object/from16 v16, v0

    .line 252
    .line 253
    move-object/from16 v17, v2

    .line 254
    .line 255
    invoke-direct/range {v6 .. v20}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzr;Lcom/google/android/gms/ads/internal/overlay/zzad;Lcom/google/android/gms/internal/ads/zzcfb;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwg;Lcom/google/android/gms/internal/ads/zzbte;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzehw;->zzl:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 259
    .line 260
    move-object/from16 v2, p2

    .line 261
    .line 262
    invoke-static {v2, v6, v5, v0}, Lcom/google/android/gms/ads/internal/overlay/zzn;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsd;)V

    .line 263
    .line 264
    .line 265
    return-void

    .line 266
    :goto_6
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 267
    .line 268
    const-string v2, ""

    .line 269
    .line 270
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method
