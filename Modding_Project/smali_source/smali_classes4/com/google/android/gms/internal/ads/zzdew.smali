.class public final Lcom/google/android/gms/internal/ads/zzdew;
.super Lcom/google/android/gms/internal/ads/zzcqx;
.source "Proguard"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzddc;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdgi;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcrs;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfoi;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcwg;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzbzr;

.field private zzk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzdgi;Lcom/google/android/gms/internal/ads/zzcrs;Lcom/google/android/gms/internal/ads/zzfoi;Lcom/google/android/gms/internal/ads/zzcwg;Lcom/google/android/gms/internal/ads/zzbzr;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzcfb;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcqx;-><init>(Lcom/google/android/gms/internal/ads/zzcqw;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzk:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzc:Landroid/content/Context;

    .line 8
    .line 9
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzd:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdew;->zze:Lcom/google/android/gms/internal/ads/zzddc;

    .line 17
    .line 18
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzf:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 19
    .line 20
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzg:Lcom/google/android/gms/internal/ads/zzcrs;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 23
    .line 24
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 25
    .line 26
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzj:Lcom/google/android/gms/internal/ads/zzbzr;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzd:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/zzcfb;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcv;->zzgR:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzk:Z

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzf:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 34
    .line 35
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdev;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdev;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 56
    .line 57
    .line 58
    throw v0
.end method

.method public final zza()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzg:Lcom/google/android/gms/internal/ads/zzcrs;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrs;->zzg()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zzc(ZLandroid/app/Activity;)Z
    .locals 6
    .param p2    # Landroid/app/Activity;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdew;->zze:Lcom/google/android/gms/internal/ads/zzddc;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddc;->zzb()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzf:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdgi;->zza()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Lcom/google/android/gms/internal/ads/zzfbu;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcv;->zzaQ:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 23
    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/Boolean;

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzc:Landroid/content/Context;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_0

    .line 50
    .line 51
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 52
    .line 53
    const-string p1, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit  https://goo.gle/admob-interstitial-policies"

    .line 54
    .line 55
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zzd()V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzaR:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 64
    .line 65
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzh:Lcom/google/android/gms/internal/ads/zzfoi;

    .line 82
    .line 83
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcqx;->zza:Lcom/google/android/gms/internal/ads/zzfcg;

    .line 84
    .line 85
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcg;->zzb:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 86
    .line 87
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Lcom/google/android/gms/internal/ads/zzfbx;

    .line 88
    .line 89
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfbx;->zzb:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfoi;->zza(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzd:Ljava/lang/ref/WeakReference;

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/google/android/gms/internal/ads/zzcfb;

    .line 103
    .line 104
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcv;->zzmh:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 105
    .line 106
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    check-cast v4, Ljava/lang/Boolean;

    .line 115
    .line 116
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    const/4 v5, 0x0

    .line 121
    if-eqz v4, :cond_1

    .line 122
    .line 123
    if-eqz v2, :cond_1

    .line 124
    .line 125
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzcfb;->zzD()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-eqz v2, :cond_1

    .line 130
    .line 131
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzar:Z

    .line 132
    .line 133
    if-eqz v4, :cond_1

    .line 134
    .line 135
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfbu;->zzas:I

    .line 136
    .line 137
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzj:Lcom/google/android/gms/internal/ads/zzbzr;

    .line 138
    .line 139
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbzr;->zzb()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eq v2, v4, :cond_1

    .line 144
    .line 145
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 146
    .line 147
    const-string p1, "The interstitial consent form has been shown."

    .line 148
    .line 149
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 153
    .line 154
    const/16 p2, 0xc

    .line 155
    .line 156
    const-string v0, "The consent form has already been shown."

    .line 157
    .line 158
    invoke-static {p2, v0, v5}, Lcom/google/android/gms/internal/ads/zzfdq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcwg;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzk:Z

    .line 167
    .line 168
    if-eqz v2, :cond_2

    .line 169
    .line 170
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 171
    .line 172
    const-string v2, "The interstitial ad has been shown."

    .line 173
    .line 174
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 178
    .line 179
    const/16 v4, 0xa

    .line 180
    .line 181
    invoke-static {v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzfdq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzcwg;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 186
    .line 187
    .line 188
    :cond_2
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzk:Z

    .line 189
    .line 190
    if-nez v2, :cond_4

    .line 191
    .line 192
    if-nez p2, :cond_3

    .line 193
    .line 194
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzc:Landroid/content/Context;

    .line 195
    .line 196
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 197
    .line 198
    invoke-interface {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzdgi;->zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwg;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddc;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdgh; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .line 203
    .line 204
    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzk:Z

    .line 206
    .line 207
    return p1

    .line 208
    :catch_0
    move-exception p1

    .line 209
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdew;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 210
    .line 211
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zze(Lcom/google/android/gms/internal/ads/zzdgh;)V

    .line 212
    .line 213
    .line 214
    :cond_4
    :goto_0
    return v3
.end method
