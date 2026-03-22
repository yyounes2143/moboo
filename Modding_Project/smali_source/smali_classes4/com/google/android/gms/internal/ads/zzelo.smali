.class public final Lcom/google/android/gms/internal/ads/zzelo;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfcn;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzchb;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzele;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfhq;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcrm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzchb;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzele;Lcom/google/android/gms/internal/ads/zzfcn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzchb;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzc:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzd:Lcom/google/android/gms/internal/ads/zzele;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzelo;->zza:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchb;->zzy()Lcom/google/android/gms/internal/ads/zzfhq;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zze:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzele;->zzd()Lcom/google/android/gms/internal/ads/zzekr;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzv(Lcom/google/android/gms/internal/ads/zzekr;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzelo;)Lcom/google/android/gms/internal/ads/zzchb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzchb;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzelo;)Lcom/google/android/gms/internal/ads/zzele;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzd:Lcom/google/android/gms/internal/ads/zzele;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzelo;)Lcom/google/android/gms/internal/ads/zzfhq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zze:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzelo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzd:Lcom/google/android/gms/internal/ads/zzele;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzele;->zza()Lcom/google/android/gms/internal/ads/zzcvw;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x6

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfdq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvw;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzelo;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzd:Lcom/google/android/gms/internal/ads/zzele;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzele;->zza()Lcom/google/android/gms/internal/ads/zzcvw;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x4

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfdq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcvw;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzf:Lcom/google/android/gms/internal/ads/zzcrm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrm;->zzf()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelf;Lcom/google/android/gms/internal/ads/zzelg;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzc:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzI(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 20
    .line 21
    const-string p1, "Failed to load the ad because app ID is missing."

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzchb;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchb;->zzA()Ljava/util/concurrent/Executor;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelj;

    .line 33
    .line 34
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzelj;-><init>(Lcom/google/android/gms/internal/ads/zzelo;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 38
    .line 39
    .line 40
    return v3

    .line 41
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 42
    .line 43
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 44
    .line 45
    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 46
    .line 47
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzchb;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchb;->zzA()Ljava/util/concurrent/Executor;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Lcom/google/android/gms/internal/ads/zzelk;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzelk;-><init>(Lcom/google/android/gms/internal/ads/zzelo;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    return v3

    .line 65
    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    .line 66
    .line 67
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/zzfdm;->zza(Landroid/content/Context;Z)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zzji:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 71
    .line 72
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Boolean;

    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_3

    .line 87
    .line 88
    if-eqz p2, :cond_3

    .line 89
    .line 90
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzchb;

    .line 91
    .line 92
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzchb;->zzk()Lcom/google/android/gms/internal/ads/zzdvc;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzdvc;->zzo(Z)V

    .line 97
    .line 98
    .line 99
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzeli;

    .line 100
    .line 101
    iget p2, p3, Lcom/google/android/gms/internal/ads/zzeli;->zza:I

    .line 102
    .line 103
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    new-instance p3, Landroid/util/Pair;

    .line 112
    .line 113
    sget-object v2, Lcom/google/android/gms/internal/ads/zzdrl;->zza:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 114
    .line 115
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-direct {p3, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    new-instance v2, Landroid/util/Pair;

    .line 127
    .line 128
    sget-object v5, Lcom/google/android/gms/internal/ads/zzdrl;->zzb:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 129
    .line 130
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-direct {v2, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    const/4 v4, 0x2

    .line 138
    new-array v4, v4, [Landroid/util/Pair;

    .line 139
    .line 140
    aput-object p3, v4, v3

    .line 141
    .line 142
    aput-object v2, v4, v0

    .line 143
    .line 144
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdrn;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzelo;->zza:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 149
    .line 150
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzH(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzfcn;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzfcn;->zzC(I)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfcn;->zzJ()Lcom/google/android/gms/internal/ads/zzfcp;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfhm;->zzf(Lcom/google/android/gms/internal/ads/zzfcp;)I

    .line 164
    .line 165
    .line 166
    move-result p3

    .line 167
    const/16 v2, 0x8

    .line 168
    .line 169
    invoke-static {v1, p3, v2, p1}, Lcom/google/android/gms/internal/ads/zzfhb;->zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfcp;->zzn:Lcom/google/android/gms/ads/internal/client/zzcl;

    .line 174
    .line 175
    if-eqz p3, :cond_4

    .line 176
    .line 177
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzd:Lcom/google/android/gms/internal/ads/zzele;

    .line 178
    .line 179
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzele;->zzd()Lcom/google/android/gms/internal/ads/zzekr;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzekr;->zzm(Lcom/google/android/gms/ads/internal/client/zzcl;)V

    .line 184
    .line 185
    .line 186
    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzb:Lcom/google/android/gms/internal/ads/zzchb;

    .line 187
    .line 188
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchb;->zzg()Lcom/google/android/gms/internal/ads/zzdgv;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    new-instance v4, Lcom/google/android/gms/internal/ads/zzcva;

    .line 193
    .line 194
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcva;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzcva;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzcva;->zzk(Lcom/google/android/gms/internal/ads/zzfcp;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcva;->zzl()Lcom/google/android/gms/internal/ads/zzcvc;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdgv;->zzf(Lcom/google/android/gms/internal/ads/zzcvc;)Lcom/google/android/gms/internal/ads/zzdgv;

    .line 208
    .line 209
    .line 210
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdbp;

    .line 211
    .line 212
    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdbp;-><init>()V

    .line 213
    .line 214
    .line 215
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzd:Lcom/google/android/gms/internal/ads/zzele;

    .line 216
    .line 217
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzele;->zzd()Lcom/google/android/gms/internal/ads/zzekr;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchb;->zzA()Ljava/util/concurrent/Executor;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdbp;->zzk(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbp;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdbp;->zzn()Lcom/google/android/gms/internal/ads/zzdbr;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdgv;->zze(Lcom/google/android/gms/internal/ads/zzdbr;)Lcom/google/android/gms/internal/ads/zzdgv;

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzele;->zzc()Lcom/google/android/gms/internal/ads/zzdgr;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdgv;->zzd(Lcom/google/android/gms/internal/ads/zzdgr;)Lcom/google/android/gms/internal/ads/zzdgv;

    .line 240
    .line 241
    .line 242
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcom;

    .line 243
    .line 244
    const/4 v1, 0x0

    .line 245
    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzcom;-><init>(Landroid/view/ViewGroup;)V

    .line 246
    .line 247
    .line 248
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdgv;->zzc(Lcom/google/android/gms/internal/ads/zzcom;)Lcom/google/android/gms/internal/ads/zzdgv;

    .line 249
    .line 250
    .line 251
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdgv;->zzg()Lcom/google/android/gms/internal/ads/zzdgw;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbeo;->zzc:Lcom/google/android/gms/internal/ads/zzbef;

    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p2

    .line 261
    check-cast p2, Ljava/lang/Boolean;

    .line 262
    .line 263
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-eqz p2, :cond_5

    .line 268
    .line 269
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdgw;->zzf()Lcom/google/android/gms/internal/ads/zzfhn;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfhn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfhn;

    .line 274
    .line 275
    .line 276
    iget-object p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfhn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhn;

    .line 279
    .line 280
    .line 281
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 282
    .line 283
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfhn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfhn;

    .line 284
    .line 285
    .line 286
    :cond_5
    move-object v6, v1

    .line 287
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchb;->zzx()Lcom/google/android/gms/internal/ads/zzfdo;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfdo;->zzc(I)V

    .line 292
    .line 293
    .line 294
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcrm;

    .line 295
    .line 296
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzffn;->zzc()Lcom/google/android/gms/internal/ads/zzgdj;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchb;->zzB()Ljava/util/concurrent/ScheduledExecutorService;

    .line 301
    .line 302
    .line 303
    move-result-object p3

    .line 304
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdgw;->zza()Lcom/google/android/gms/internal/ads/zzcsb;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcsb;->zzi()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcsb;->zzh(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    invoke-direct {p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzcrm;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 317
    .line 318
    .line 319
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzelo;->zzf:Lcom/google/android/gms/internal/ads/zzcrm;

    .line 320
    .line 321
    new-instance v3, Lcom/google/android/gms/internal/ads/zzeln;

    .line 322
    .line 323
    move-object v4, p0

    .line 324
    move-object v5, p4

    .line 325
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzeln;-><init>(Lcom/google/android/gms/internal/ads/zzelo;Lcom/google/android/gms/internal/ads/zzelg;Lcom/google/android/gms/internal/ads/zzfhn;Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzdgw;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzcrm;->zze(Lcom/google/android/gms/internal/ads/zzgcu;)V

    .line 329
    .line 330
    .line 331
    return v0
.end method
