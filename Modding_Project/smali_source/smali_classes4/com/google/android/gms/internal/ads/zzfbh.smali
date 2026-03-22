.class public final Lcom/google/android/gms/internal/ads/zzfbh;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelh;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzchb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfax;

.field private final zze:Lcom/google/android/gms/internal/ads/zzezl;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfch;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfhq;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfcn;

.field private zzi:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzchb;Lcom/google/android/gms/internal/ads/zzezl;Lcom/google/android/gms/internal/ads/zzfax;Lcom/google/android/gms/internal/ads/zzfcn;Lcom/google/android/gms/internal/ads/zzfch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zza:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzb:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzc:Lcom/google/android/gms/internal/ads/zzchb;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zze:Lcom/google/android/gms/internal/ads/zzezl;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzd:Lcom/google/android/gms/internal/ads/zzfax;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzh:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzf:Lcom/google/android/gms/internal/ads/zzfch;

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzchb;->zzy()Lcom/google/android/gms/internal/ads/zzfhq;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzg:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzfbh;Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzdol;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbh;->zzk(Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzdol;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfbh;Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzdol;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbh;->zzk(Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzdol;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfbh;)Lcom/google/android/gms/internal/ads/zzezl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zze:Lcom/google/android/gms/internal/ads/zzezl;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzfbh;)Lcom/google/android/gms/internal/ads/zzfax;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzd:Lcom/google/android/gms/internal/ads/zzfax;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzfbh;)Lcom/google/android/gms/internal/ads/zzfhq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzg:Lcom/google/android/gms/internal/ads/zzfhq;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzfbh;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzb:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzfbh;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzd:Lcom/google/android/gms/internal/ads/zzfax;

    .line 2
    .line 3
    const/4 v0, 0x6

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfdq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfax;->zzdD(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzdol;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbf;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzc:Lcom/google/android/gms/internal/ads/zzchb;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzchb;->zzh()Lcom/google/android/gms/internal/ads/zzdol;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcva;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcva;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zza:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcva;->zzf(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbf;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcva;->zzk(Lcom/google/android/gms/internal/ads/zzfcp;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzf:Lcom/google/android/gms/internal/ads/zzfch;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcva;->zzj(Lcom/google/android/gms/internal/ads/zzfch;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcva;->zzl()Lcom/google/android/gms/internal/ads/zzcvc;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdol;->zzd(Lcom/google/android/gms/internal/ads/zzcvc;)Lcom/google/android/gms/internal/ads/zzdol;

    .line 34
    .line 35
    .line 36
    new-instance p1, Lcom/google/android/gms/internal/ads/zzdbp;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdbp;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbp;->zzn()Lcom/google/android/gms/internal/ads/zzdbr;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdol;->zzc(Lcom/google/android/gms/internal/ads/zzdbr;)Lcom/google/android/gms/internal/ads/zzdol;

    .line 46
    .line 47
    .line 48
    return-object v0
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    throw v0
.end method

.method public final zzb(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelf;Lcom/google/android/gms/internal/ads/zzelg;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbwe;

    .line 3
    .line 4
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbwe;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfaz;

    .line 8
    .line 9
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/zzbwe;->zzb:Ljava/lang/String;

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 15
    .line 16
    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 17
    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzb:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfba;

    .line 24
    .line 25
    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfba;-><init>(Lcom/google/android/gms/internal/ads/zzfbh;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return p2

    .line 32
    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 33
    .line 34
    if-eqz p3, :cond_1

    .line 35
    .line 36
    invoke-interface {p3}, Ljava/util/concurrent/Future;->isDone()Z

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    if-nez p3, :cond_1

    .line 41
    .line 42
    return p2

    .line 43
    :cond_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbeo;->zzc:Lcom/google/android/gms/internal/ads/zzbef;

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbef;->zze()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    check-cast p3, Ljava/lang/Boolean;

    .line 50
    .line 51
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    const/4 v2, 0x5

    .line 56
    const/4 v3, 0x0

    .line 57
    if-eqz p3, :cond_2

    .line 58
    .line 59
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zze:Lcom/google/android/gms/internal/ads/zzezl;

    .line 60
    .line 61
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzezl;->zzd()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_2

    .line 66
    .line 67
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzezl;->zzd()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    check-cast p3, Lcom/google/android/gms/internal/ads/zzdom;

    .line 72
    .line 73
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcuz;->zzg()Lcom/google/android/gms/internal/ads/zzfhn;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzfhn;->zzi(I)Lcom/google/android/gms/internal/ads/zzfhn;

    .line 78
    .line 79
    .line 80
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbwe;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 81
    .line 82
    iget-object v5, v4, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p3, v5}, Lcom/google/android/gms/internal/ads/zzfhn;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfhn;

    .line 85
    .line 86
    .line 87
    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfhn;->zzf(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfhn;

    .line 90
    .line 91
    .line 92
    move-object v8, p3

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move-object v8, v3

    .line 95
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zza:Landroid/content/Context;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzbwe;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 98
    .line 99
    iget-boolean v4, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    .line 100
    .line 101
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/ads/zzfdm;->zza(Landroid/content/Context;Z)V

    .line 102
    .line 103
    .line 104
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcv;->zzji:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-eqz v5, :cond_3

    .line 121
    .line 122
    if-eqz v4, :cond_3

    .line 123
    .line 124
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzc:Lcom/google/android/gms/internal/ads/zzchb;

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzchb;->zzk()Lcom/google/android/gms/internal/ads/zzdvc;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzdvc;->zzo(Z)V

    .line 131
    .line 132
    .line 133
    :cond_3
    new-instance v4, Landroid/util/Pair;

    .line 134
    .line 135
    sget-object v5, Lcom/google/android/gms/internal/ads/zzdrl;->zza:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 136
    .line 137
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    iget-wide v6, v1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    .line 142
    .line 143
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object v6

    .line 147
    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    new-instance v5, Landroid/util/Pair;

    .line 151
    .line 152
    sget-object v6, Lcom/google/android/gms/internal/ads/zzdrl;->zzb:Lcom/google/android/gms/internal/ads/zzdrl;

    .line 153
    .line 154
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdrl;->zza()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 163
    .line 164
    .line 165
    move-result-wide v9

    .line 166
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    const/4 v6, 0x2

    .line 174
    new-array v6, v6, [Landroid/util/Pair;

    .line 175
    .line 176
    aput-object v4, v6, p2

    .line 177
    .line 178
    aput-object v5, v6, v0

    .line 179
    .line 180
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdrn;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    .line 181
    .line 182
    .line 183
    move-result-object p2

    .line 184
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzh:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 185
    .line 186
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 187
    .line 188
    .line 189
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzd()Lcom/google/android/gms/ads/internal/client/zzr;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzs(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfcn;->zzH(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzfcn;->zzA(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfcn;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfcn;->zzJ()Lcom/google/android/gms/internal/ads/zzfcp;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfhm;->zzf(Lcom/google/android/gms/internal/ads/zzfcp;)I

    .line 207
    .line 208
    .line 209
    move-result p2

    .line 210
    invoke-static {p3, p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzfhb;->zzb(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfhc;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    new-instance v10, Lcom/google/android/gms/internal/ads/zzfbf;

    .line 215
    .line 216
    invoke-direct {v10, v3}, Lcom/google/android/gms/internal/ads/zzfbf;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;)V

    .line 217
    .line 218
    .line 219
    iput-object p1, v10, Lcom/google/android/gms/internal/ads/zzfbf;->zza:Lcom/google/android/gms/internal/ads/zzfcp;

    .line 220
    .line 221
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zze:Lcom/google/android/gms/internal/ads/zzezl;

    .line 222
    .line 223
    new-instance p2, Lcom/google/android/gms/internal/ads/zzezm;

    .line 224
    .line 225
    invoke-direct {p2, v10, v3}, Lcom/google/android/gms/internal/ads/zzezm;-><init>(Lcom/google/android/gms/internal/ads/zzezj;Lcom/google/android/gms/internal/ads/zzbvl;)V

    .line 226
    .line 227
    .line 228
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfbb;

    .line 229
    .line 230
    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfbb;-><init>(Lcom/google/android/gms/internal/ads/zzfbh;)V

    .line 231
    .line 232
    .line 233
    invoke-interface {p1, p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzezl;->zzc(Lcom/google/android/gms/internal/ads/zzezm;Lcom/google/android/gms/internal/ads/zzezk;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 238
    .line 239
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfbe;

    .line 240
    .line 241
    move-object v6, p0

    .line 242
    move-object v7, p4

    .line 243
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzfbe;-><init>(Lcom/google/android/gms/internal/ads/zzfbh;Lcom/google/android/gms/internal/ads/zzelg;Lcom/google/android/gms/internal/ads/zzfhn;Lcom/google/android/gms/internal/ads/zzfhc;Lcom/google/android/gms/internal/ads/zzfbf;)V

    .line 244
    .line 245
    .line 246
    iget-object p2, v6, Lcom/google/android/gms/internal/ads/zzfbh;->zzb:Ljava/util/concurrent/Executor;

    .line 247
    .line 248
    invoke-static {p1, v5, p2}, Lcom/google/android/gms/internal/ads/zzgcy;->zzr(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)V

    .line 249
    .line 250
    .line 251
    return v0
.end method

.method public final zzj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbh;->zzh:Lcom/google/android/gms/internal/ads/zzfcn;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfcn;->zzp()Lcom/google/android/gms/internal/ads/zzfca;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfca;->zza(I)Lcom/google/android/gms/internal/ads/zzfca;

    .line 8
    .line 9
    .line 10
    return-void
.end method
