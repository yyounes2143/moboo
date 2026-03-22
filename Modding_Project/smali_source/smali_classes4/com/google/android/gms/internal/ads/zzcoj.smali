.class public final Lcom/google/android/gms/internal/ads/zzcoj;
.super Lcom/google/android/gms/internal/ads/zzcqx;
.source "Proguard"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcfb;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:I

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcnx;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdgi;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzddc;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcwg;

.field private final zzj:Z

.field private final zzk:Lcom/google/android/gms/internal/ads/zzbzr;

.field private zzl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcqw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcfb;ILcom/google/android/gms/internal/ads/zzcnx;Lcom/google/android/gms/internal/ads/zzdgi;Lcom/google/android/gms/internal/ads/zzddc;Lcom/google/android/gms/internal/ads/zzcwg;Lcom/google/android/gms/internal/ads/zzbzr;)V
    .locals 0
    .param p3    # Lcom/google/android/gms/internal/ads/zzcfb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcqx;-><init>(Lcom/google/android/gms/internal/ads/zzcqw;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzl:Z

    .line 6
    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzc:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zze:Landroid/content/Context;

    .line 10
    .line 11
    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzd:I

    .line 12
    .line 13
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzf:Lcom/google/android/gms/internal/ads/zzcnx;

    .line 14
    .line 15
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzg:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 16
    .line 17
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzh:Lcom/google/android/gms/internal/ads/zzddc;

    .line 18
    .line 19
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 20
    .line 21
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcv;->zzfH:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzj:Z

    .line 38
    .line 39
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzk:Lcom/google/android/gms/internal/ads/zzbzr;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzd:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzb()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcqx;->zzb()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzc:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfb;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzc:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzak(Lcom/google/android/gms/internal/ads/zzbah;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final zzd(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbau;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zze:Landroid/content/Context;

    .line 4
    .line 5
    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzj:Z

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzh:Lcom/google/android/gms/internal/ads/zzddc;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddc;->zzb()V

    .line 12
    .line 13
    .line 14
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzg:Lcom/google/android/gms/internal/ads/zzdgi;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->zza()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Lcom/google/android/gms/internal/ads/zzfbu;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcv;->zzaQ:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 57
    .line 58
    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    .line 59
    .line 60
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcwg;->zzd()V

    .line 66
    .line 67
    .line 68
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbcv;->zzaR:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 69
    .line 70
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_7

    .line 85
    .line 86
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfoi;

    .line 87
    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzv()Lcom/google/android/gms/ads/internal/util/zzbt;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfoi;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqx;->zza:Lcom/google/android/gms/internal/ads/zzfcg;

    .line 104
    .line 105
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcg;->zzb:Lcom/google/android/gms/internal/ads/zzfcf;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcf;->zzb:Lcom/google/android/gms/internal/ads/zzfbx;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbx;->zzb:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfoi;->zza(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcv;->zzmh:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 116
    .line 117
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Boolean;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    const/4 v2, 0x0

    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzc:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 135
    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzD()Lcom/google/android/gms/internal/ads/zzfbu;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    if-eqz v1, :cond_4

    .line 143
    .line 144
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzar:Z

    .line 145
    .line 146
    if-eqz v3, :cond_4

    .line 147
    .line 148
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfbu;->zzas:I

    .line 149
    .line 150
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzk:Lcom/google/android/gms/internal/ads/zzbzr;

    .line 151
    .line 152
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbzr;->zzb()I

    .line 153
    .line 154
    .line 155
    move-result v3

    .line 156
    if-ne v1, v3, :cond_3

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 160
    .line 161
    const-string p1, "The app open consent form has been shown."

    .line 162
    .line 163
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 167
    .line 168
    const/16 p2, 0xc

    .line 169
    .line 170
    const-string p3, "The consent form has already been shown."

    .line 171
    .line 172
    invoke-static {p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzfdq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcwg;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzl:Z

    .line 181
    .line 182
    if-eqz v1, :cond_5

    .line 183
    .line 184
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 185
    .line 186
    const-string v1, "App open interstitial ad is already visible."

    .line 187
    .line 188
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 192
    .line 193
    const/16 v3, 0xa

    .line 194
    .line 195
    invoke-static {v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzfdq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcwg;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    .line 200
    .line 201
    .line 202
    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzl:Z

    .line 203
    .line 204
    if-nez v1, :cond_7

    .line 205
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 207
    .line 208
    invoke-interface {v0, p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdgi;->zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwg;)V

    .line 209
    .line 210
    .line 211
    if-eqz p2, :cond_6

    .line 212
    .line 213
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzh:Lcom/google/android/gms/internal/ads/zzddc;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzddc;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdgh; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :catch_0
    move-exception p1

    .line 220
    goto :goto_2

    .line 221
    :cond_6
    :goto_1
    const/4 p1, 0x1

    .line 222
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzl:Z

    .line 223
    .line 224
    return-void

    .line 225
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzi:Lcom/google/android/gms/internal/ads/zzcwg;

    .line 226
    .line 227
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcwg;->zze(Lcom/google/android/gms/internal/ads/zzdgh;)V

    .line 228
    .line 229
    .line 230
    :cond_7
    return-void
.end method

.method public final zze(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoj;->zzf:Lcom/google/android/gms/internal/ads/zzcnx;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcnx;->zza(JI)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
