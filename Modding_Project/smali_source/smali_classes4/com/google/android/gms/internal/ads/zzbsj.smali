.class public final Lcom/google/android/gms/internal/ads/zzbsj;
.super Lcom/google/android/gms/internal/ads/zzbsp;
.source "Proguard"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private final zzi:Ljava/lang/Object;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcfb;

.field private final zzk:Landroid/app/Activity;

.field private zzl:Lcom/google/android/gms/internal/ads/zzcgv;

.field private zzm:Landroid/widget/ImageView;

.field private zzn:Landroid/widget/LinearLayout;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzbsq;

.field private zzp:Landroid/widget/PopupWindow;

.field private zzq:Landroid/widget/RelativeLayout;

.field private zzr:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v5, "bottom-right"

    .line 2
    .line 3
    const-string v6, "bottom-center"

    .line 4
    .line 5
    const-string v0, "top-left"

    .line 6
    .line 7
    const-string v1, "top-right"

    .line 8
    .line 9
    const-string v2, "top-center"

    .line 10
    .line 11
    const-string v3, "center"

    .line 12
    .line 13
    const-string v4, "bottom-left"

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfb;Lcom/google/android/gms/internal/ads/zzbsq;)V
    .locals 2

    .line 1
    const-string v0, "resize"

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "top-right"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zza:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzb:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 15
    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 17
    .line 18
    const/4 v1, -0x1

    .line 19
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zze:I

    .line 20
    .line 21
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 22
    .line 23
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzg:I

    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzh:I

    .line 26
    .line 27
    new-instance v0, Ljava/lang/Object;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzi:Ljava/lang/Object;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 35
    .line 36
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfb;->zzi()Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzk:Landroid/app/Activity;

    .line 41
    .line 42
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzo:Lcom/google/android/gms/internal/ads/zzbsq;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzbsj;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsj;->zzm(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final zzm(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzle:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 22
    .line 23
    check-cast v1, Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 42
    .line 43
    check-cast v1, Landroid/view/View;

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzlf:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 49
    .line 50
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 67
    .line 68
    check-cast v0, Landroid/view/View;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    instance-of v2, v1, Landroid/view/ViewGroup;

    .line 75
    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    check-cast v1, Landroid/view/ViewGroup;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzr:Landroid/view/ViewGroup;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzm:Landroid/widget/ImageView;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 90
    .line 91
    .line 92
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcv;->zzlg:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 93
    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_2

    .line 109
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzr:Landroid/view/ViewGroup;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 113
    .line 114
    move-object v2, v1

    .line 115
    check-cast v2, Landroid/view/View;

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzl:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 121
    .line 122
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaj(Lcom/google/android/gms/internal/ads/zzcgv;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 128
    .line 129
    const-string v1, "Unable to add webview back to view hierarchy."

    .line 130
    .line 131
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzr:Landroid/view/ViewGroup;

    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 138
    .line 139
    move-object v2, v1

    .line 140
    check-cast v2, Landroid/view/View;

    .line 141
    .line 142
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzl:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 146
    .line 147
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaj(Lcom/google/android/gms/internal/ads/zzcgv;)V

    .line 148
    .line 149
    .line 150
    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 151
    .line 152
    const-string p1, "default"

    .line 153
    .line 154
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsp;->zzl(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzo:Lcom/google/android/gms/internal/ads/zzbsq;

    .line 158
    .line 159
    if-eqz p1, :cond_4

    .line 160
    .line 161
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbsq;->zzb()V

    .line 162
    .line 163
    .line 164
    :cond_4
    const/4 p1, 0x0

    .line 165
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 166
    .line 167
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 168
    .line 169
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzr:Landroid/view/ViewGroup;

    .line 170
    .line 171
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzn:Landroid/widget/LinearLayout;

    .line 172
    .line 173
    return-void
.end method


# virtual methods
.method public final zzb(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzi:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    if-eqz v1, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcv;->zzld:Lcom/google/android/gms/internal/ads/zzbcm;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbct;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbct;->zzb(Lcom/google/android/gms/internal/ads/zzbcm;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eq v1, v2, :cond_0

    .line 39
    .line 40
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaa;->zzf:Lcom/google/android/gms/internal/ads/zzgdj;

    .line 41
    .line 42
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbsh;

    .line 43
    .line 44
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbsh;-><init>(Lcom/google/android/gms/internal/ads/zzbsj;Z)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgdj;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsj;->zzm(Z)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    monitor-exit v0

    .line 57
    return-void

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p1
.end method

.method public final zzc(Ljava/util/Map;)V
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzi:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzk:Landroid/app/Activity;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    const-string v0, "Not an activity context. Cannot resize."

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v2

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto/16 :goto_f

    .line 21
    .line 22
    :cond_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 23
    .line 24
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    if-nez v5, :cond_1

    .line 29
    .line 30
    const-string v0, "Webview is not yet available, size is not set."

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    monitor-exit v2

    .line 36
    return-void

    .line 37
    :cond_1
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzcgv;->zzi()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    monitor-exit v2

    .line 53
    return-void

    .line 54
    :cond_2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaF()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    if-eqz v5, :cond_3

    .line 59
    .line 60
    const-string v0, "Cannot resize an expanded banner."

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v2

    .line 66
    return-void

    .line 67
    :cond_3
    const-string v5, "width"

    .line 68
    .line 69
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    check-cast v5, Ljava/lang/CharSequence;

    .line 74
    .line 75
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-nez v5, :cond_4

    .line 80
    .line 81
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 82
    .line 83
    .line 84
    const-string v5, "width"

    .line 85
    .line 86
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    check-cast v5, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzh:I

    .line 97
    .line 98
    :cond_4
    const-string v5, "height"

    .line 99
    .line 100
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Ljava/lang/CharSequence;

    .line 105
    .line 106
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-nez v5, :cond_5

    .line 111
    .line 112
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 113
    .line 114
    .line 115
    const-string v5, "height"

    .line 116
    .line 117
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    check-cast v5, Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zze:I

    .line 128
    .line 129
    :cond_5
    const-string v5, "offsetX"

    .line 130
    .line 131
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    check-cast v5, Ljava/lang/CharSequence;

    .line 136
    .line 137
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_6

    .line 142
    .line 143
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 144
    .line 145
    .line 146
    const-string v5, "offsetX"

    .line 147
    .line 148
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/String;

    .line 153
    .line 154
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 159
    .line 160
    :cond_6
    const-string v5, "offsetY"

    .line 161
    .line 162
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    check-cast v5, Ljava/lang/CharSequence;

    .line 167
    .line 168
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-nez v5, :cond_7

    .line 173
    .line 174
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 175
    .line 176
    .line 177
    const-string v5, "offsetY"

    .line 178
    .line 179
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v5

    .line 183
    check-cast v5, Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    move-result v5

    .line 189
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzg:I

    .line 190
    .line 191
    :cond_7
    const-string v5, "allowOffscreen"

    .line 192
    .line 193
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    check-cast v5, Ljava/lang/CharSequence;

    .line 198
    .line 199
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    if-nez v5, :cond_8

    .line 204
    .line 205
    const-string v5, "allowOffscreen"

    .line 206
    .line 207
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    check-cast v5, Ljava/lang/String;

    .line 212
    .line 213
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzb:Z

    .line 218
    .line 219
    :cond_8
    const-string v5, "customClosePosition"

    .line 220
    .line 221
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Ljava/lang/String;

    .line 226
    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-nez v5, :cond_9

    .line 232
    .line 233
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zza:Ljava/lang/String;

    .line 234
    .line 235
    :cond_9
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzh:I

    .line 236
    .line 237
    if-ltz v0, :cond_2b

    .line 238
    .line 239
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zze:I

    .line 240
    .line 241
    if-ltz v0, :cond_2b

    .line 242
    .line 243
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    if-eqz v0, :cond_2a

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    if-nez v5, :cond_a

    .line 254
    .line 255
    goto/16 :goto_e

    .line 256
    .line 257
    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 258
    .line 259
    .line 260
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/app/Activity;)[I

    .line 261
    .line 262
    .line 263
    move-result-object v5

    .line 264
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 265
    .line 266
    .line 267
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    const/4 v7, 0x0

    .line 272
    aget v8, v5, v7

    .line 273
    .line 274
    const/4 v9, 0x1

    .line 275
    aget v5, v5, v9

    .line 276
    .line 277
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzh:I

    .line 278
    .line 279
    const/4 v12, 0x2

    .line 280
    const/4 v13, 0x3

    .line 281
    const/4 v14, 0x5

    .line 282
    const/4 v15, 0x4

    .line 283
    const/16 v11, 0x32

    .line 284
    .line 285
    const/16 v16, 0x0

    .line 286
    .line 287
    if-lt v10, v11, :cond_b

    .line 288
    .line 289
    if-le v10, v8, :cond_c

    .line 290
    .line 291
    :cond_b
    move/from16 v17, v7

    .line 292
    .line 293
    move/from16 v18, v11

    .line 294
    .line 295
    goto/16 :goto_8

    .line 296
    .line 297
    :cond_c
    move/from16 v17, v7

    .line 298
    .line 299
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zze:I

    .line 300
    .line 301
    if-lt v7, v11, :cond_d

    .line 302
    .line 303
    if-le v7, v5, :cond_e

    .line 304
    .line 305
    :cond_d
    move/from16 v18, v11

    .line 306
    .line 307
    goto/16 :goto_7

    .line 308
    .line 309
    :cond_e
    if-ne v7, v5, :cond_f

    .line 310
    .line 311
    if-ne v10, v8, :cond_f

    .line 312
    .line 313
    const-string v5, "Cannot resize to a full-screen ad."

    .line 314
    .line 315
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 316
    .line 317
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    move/from16 v18, v11

    .line 321
    .line 322
    goto/16 :goto_9

    .line 323
    .line 324
    :cond_f
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzb:Z

    .line 325
    .line 326
    if-eqz v5, :cond_18

    .line 327
    .line 328
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zza:Ljava/lang/String;

    .line 329
    .line 330
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 331
    .line 332
    .line 333
    move-result v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    sparse-switch v18, :sswitch_data_0

    .line 335
    .line 336
    .line 337
    move/from16 v18, v11

    .line 338
    .line 339
    goto :goto_0

    .line 340
    :sswitch_0
    move/from16 v18, v11

    .line 341
    .line 342
    const-string v11, "top-center"

    .line 343
    .line 344
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-eqz v5, :cond_10

    .line 349
    .line 350
    move v5, v9

    .line 351
    goto :goto_1

    .line 352
    :sswitch_1
    move/from16 v18, v11

    .line 353
    .line 354
    const-string v11, "bottom-center"

    .line 355
    .line 356
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-eqz v5, :cond_10

    .line 361
    .line 362
    move v5, v15

    .line 363
    goto :goto_1

    .line 364
    :sswitch_2
    move/from16 v18, v11

    .line 365
    .line 366
    const-string v11, "bottom-right"

    .line 367
    .line 368
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_10

    .line 373
    .line 374
    move v5, v14

    .line 375
    goto :goto_1

    .line 376
    :sswitch_3
    move/from16 v18, v11

    .line 377
    .line 378
    const-string v11, "bottom-left"

    .line 379
    .line 380
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-eqz v5, :cond_10

    .line 385
    .line 386
    move v5, v13

    .line 387
    goto :goto_1

    .line 388
    :sswitch_4
    move/from16 v18, v11

    .line 389
    .line 390
    const-string v11, "top-left"

    .line 391
    .line 392
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    .line 394
    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_10

    .line 397
    .line 398
    move/from16 v5, v17

    .line 399
    .line 400
    goto :goto_1

    .line 401
    :sswitch_5
    move/from16 v18, v11

    .line 402
    .line 403
    const-string v11, "center"

    .line 404
    .line 405
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v5

    .line 409
    if-eqz v5, :cond_10

    .line 410
    .line 411
    move v5, v12

    .line 412
    goto :goto_1

    .line 413
    :cond_10
    :goto_0
    const/4 v5, -0x1

    .line 414
    :goto_1
    if-eqz v5, :cond_16

    .line 415
    .line 416
    if-eq v5, v9, :cond_15

    .line 417
    .line 418
    if-eq v5, v12, :cond_14

    .line 419
    .line 420
    if-eq v5, v13, :cond_13

    .line 421
    .line 422
    if-eq v5, v15, :cond_12

    .line 423
    .line 424
    if-eq v5, v14, :cond_11

    .line 425
    .line 426
    :try_start_1
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 427
    .line 428
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 429
    .line 430
    add-int/2addr v5, v7

    .line 431
    add-int/2addr v5, v10

    .line 432
    add-int/lit8 v5, v5, -0x32

    .line 433
    .line 434
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 435
    .line 436
    :goto_2
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzg:I

    .line 437
    .line 438
    add-int/2addr v7, v10

    .line 439
    goto :goto_4

    .line 440
    :cond_11
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 441
    .line 442
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 443
    .line 444
    add-int/2addr v5, v11

    .line 445
    add-int/2addr v5, v10

    .line 446
    add-int/lit8 v5, v5, -0x32

    .line 447
    .line 448
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 449
    .line 450
    :goto_3
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzg:I

    .line 451
    .line 452
    add-int/2addr v10, v11

    .line 453
    add-int/2addr v10, v7

    .line 454
    add-int/lit8 v7, v10, -0x32

    .line 455
    .line 456
    goto :goto_4

    .line 457
    :cond_12
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 458
    .line 459
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 460
    .line 461
    shr-int/2addr v10, v9

    .line 462
    add-int/2addr v5, v11

    .line 463
    add-int/2addr v5, v10

    .line 464
    add-int/lit8 v5, v5, -0x19

    .line 465
    .line 466
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 467
    .line 468
    goto :goto_3

    .line 469
    :cond_13
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 470
    .line 471
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 472
    .line 473
    add-int/2addr v5, v10

    .line 474
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_14
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 478
    .line 479
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 480
    .line 481
    shr-int/2addr v10, v9

    .line 482
    add-int/2addr v5, v11

    .line 483
    add-int/2addr v5, v10

    .line 484
    add-int/lit8 v5, v5, -0x19

    .line 485
    .line 486
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 487
    .line 488
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzg:I

    .line 489
    .line 490
    add-int/2addr v10, v11

    .line 491
    shr-int/2addr v7, v9

    .line 492
    add-int/2addr v10, v7

    .line 493
    add-int/lit8 v7, v10, -0x19

    .line 494
    .line 495
    goto :goto_4

    .line 496
    :cond_15
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 497
    .line 498
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 499
    .line 500
    shr-int/2addr v10, v9

    .line 501
    add-int/2addr v5, v7

    .line 502
    add-int/2addr v5, v10

    .line 503
    add-int/lit8 v5, v5, -0x19

    .line 504
    .line 505
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 506
    .line 507
    goto :goto_2

    .line 508
    :cond_16
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 509
    .line 510
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 511
    .line 512
    add-int/2addr v5, v7

    .line 513
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 514
    .line 515
    goto :goto_2

    .line 516
    :goto_4
    if-ltz v5, :cond_1d

    .line 517
    .line 518
    add-int/lit8 v5, v5, 0x32

    .line 519
    .line 520
    if-gt v5, v8, :cond_1d

    .line 521
    .line 522
    aget v5, v6, v17

    .line 523
    .line 524
    if-lt v7, v5, :cond_1d

    .line 525
    .line 526
    add-int/lit8 v7, v7, 0x32

    .line 527
    .line 528
    aget v5, v6, v9

    .line 529
    .line 530
    if-le v7, v5, :cond_17

    .line 531
    .line 532
    goto :goto_9

    .line 533
    :cond_17
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 534
    .line 535
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 536
    .line 537
    add-int/2addr v5, v6

    .line 538
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 539
    .line 540
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzg:I

    .line 541
    .line 542
    add-int/2addr v6, v7

    .line 543
    filled-new-array {v5, v6}, [I

    .line 544
    .line 545
    .line 546
    move-result-object v16

    .line 547
    goto :goto_9

    .line 548
    :cond_18
    move/from16 v18, v11

    .line 549
    .line 550
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 551
    .line 552
    .line 553
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/app/Activity;)[I

    .line 554
    .line 555
    .line 556
    move-result-object v5

    .line 557
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 558
    .line 559
    .line 560
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    .line 561
    .line 562
    .line 563
    move-result-object v6

    .line 564
    aget v5, v5, v17

    .line 565
    .line 566
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 567
    .line 568
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzf:I

    .line 569
    .line 570
    add-int/2addr v7, v8

    .line 571
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 572
    .line 573
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzg:I

    .line 574
    .line 575
    add-int/2addr v8, v10

    .line 576
    if-gez v7, :cond_19

    .line 577
    .line 578
    move/from16 v5, v17

    .line 579
    .line 580
    goto :goto_5

    .line 581
    :cond_19
    iget v10, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzh:I

    .line 582
    .line 583
    add-int v11, v7, v10

    .line 584
    .line 585
    if-le v11, v5, :cond_1a

    .line 586
    .line 587
    sub-int/2addr v5, v10

    .line 588
    goto :goto_5

    .line 589
    :cond_1a
    move v5, v7

    .line 590
    :goto_5
    aget v7, v6, v17

    .line 591
    .line 592
    if-ge v8, v7, :cond_1b

    .line 593
    .line 594
    move v8, v7

    .line 595
    goto :goto_6

    .line 596
    :cond_1b
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zze:I

    .line 597
    .line 598
    add-int v10, v8, v7

    .line 599
    .line 600
    aget v6, v6, v9

    .line 601
    .line 602
    if-le v10, v6, :cond_1c

    .line 603
    .line 604
    sub-int v8, v6, v7

    .line 605
    .line 606
    :cond_1c
    :goto_6
    filled-new-array {v5, v8}, [I

    .line 607
    .line 608
    .line 609
    move-result-object v16

    .line 610
    goto :goto_9

    .line 611
    :goto_7
    const-string v5, "Height is too small or too large."

    .line 612
    .line 613
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 614
    .line 615
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    goto :goto_9

    .line 619
    :goto_8
    const-string v5, "Width is too small or too large."

    .line 620
    .line 621
    sget v6, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 622
    .line 623
    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    :cond_1d
    :goto_9
    if-nez v16, :cond_1e

    .line 627
    .line 628
    const-string v0, "Resize location out of screen or close button is not visible."

    .line 629
    .line 630
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    monitor-exit v2

    .line 634
    return-void

    .line 635
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 636
    .line 637
    .line 638
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzh:I

    .line 639
    .line 640
    invoke-static {v3, v5}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 645
    .line 646
    .line 647
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zze:I

    .line 648
    .line 649
    invoke-static {v3, v6}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    .line 650
    .line 651
    .line 652
    move-result v6

    .line 653
    move-object v7, v4

    .line 654
    check-cast v7, Landroid/view/View;

    .line 655
    .line 656
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 657
    .line 658
    .line 659
    move-result-object v7

    .line 660
    if-eqz v7, :cond_29

    .line 661
    .line 662
    instance-of v8, v7, Landroid/view/ViewGroup;

    .line 663
    .line 664
    if-eqz v8, :cond_29

    .line 665
    .line 666
    check-cast v7, Landroid/view/ViewGroup;

    .line 667
    .line 668
    move-object v8, v4

    .line 669
    check-cast v8, Landroid/view/View;

    .line 670
    .line 671
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 672
    .line 673
    .line 674
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 675
    .line 676
    if-nez v8, :cond_1f

    .line 677
    .line 678
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzr:Landroid/view/ViewGroup;

    .line 679
    .line 680
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 681
    .line 682
    .line 683
    move-object v7, v4

    .line 684
    check-cast v7, Landroid/view/View;

    .line 685
    .line 686
    invoke-virtual {v7, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 687
    .line 688
    .line 689
    move-object v7, v4

    .line 690
    check-cast v7, Landroid/view/View;

    .line 691
    .line 692
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    .line 693
    .line 694
    .line 695
    move-result-object v7

    .line 696
    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 697
    .line 698
    .line 699
    move-result-object v7

    .line 700
    move-object v8, v4

    .line 701
    check-cast v8, Landroid/view/View;

    .line 702
    .line 703
    move/from16 v10, v17

    .line 704
    .line 705
    invoke-virtual {v8, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 706
    .line 707
    .line 708
    new-instance v8, Landroid/widget/ImageView;

    .line 709
    .line 710
    invoke-direct {v8, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 711
    .line 712
    .line 713
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzm:Landroid/widget/ImageView;

    .line 714
    .line 715
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 716
    .line 717
    .line 718
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcfb;->zzO()Lcom/google/android/gms/internal/ads/zzcgv;

    .line 719
    .line 720
    .line 721
    move-result-object v7

    .line 722
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzl:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 723
    .line 724
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzr:Landroid/view/ViewGroup;

    .line 725
    .line 726
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzm:Landroid/widget/ImageView;

    .line 727
    .line 728
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 729
    .line 730
    .line 731
    goto :goto_a

    .line 732
    :cond_1f
    invoke-virtual {v8}, Landroid/widget/PopupWindow;->dismiss()V

    .line 733
    .line 734
    .line 735
    :goto_a
    new-instance v7, Landroid/widget/RelativeLayout;

    .line 736
    .line 737
    invoke-direct {v7, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 738
    .line 739
    .line 740
    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 741
    .line 742
    const/4 v10, 0x0

    .line 743
    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 744
    .line 745
    .line 746
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 747
    .line 748
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    .line 749
    .line 750
    invoke-direct {v8, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 751
    .line 752
    .line 753
    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 754
    .line 755
    .line 756
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 757
    .line 758
    .line 759
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 760
    .line 761
    new-instance v8, Landroid/widget/PopupWindow;

    .line 762
    .line 763
    const/4 v10, 0x0

    .line 764
    invoke-direct {v8, v7, v5, v6, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 765
    .line 766
    .line 767
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 768
    .line 769
    invoke-virtual {v8, v10}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 770
    .line 771
    .line 772
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 773
    .line 774
    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 775
    .line 776
    .line 777
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 778
    .line 779
    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzb:Z

    .line 780
    .line 781
    xor-int/2addr v8, v9

    .line 782
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 783
    .line 784
    .line 785
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 786
    .line 787
    check-cast v4, Landroid/view/View;

    .line 788
    .line 789
    const/4 v8, -0x1

    .line 790
    invoke-virtual {v7, v4, v8, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 791
    .line 792
    .line 793
    new-instance v4, Landroid/widget/LinearLayout;

    .line 794
    .line 795
    invoke-direct {v4, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 796
    .line 797
    .line 798
    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzn:Landroid/widget/LinearLayout;

    .line 799
    .line 800
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 801
    .line 802
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 803
    .line 804
    .line 805
    move/from16 v7, v18

    .line 806
    .line 807
    invoke-static {v3, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    .line 808
    .line 809
    .line 810
    move-result v10

    .line 811
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 812
    .line 813
    .line 814
    invoke-static {v3, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    .line 815
    .line 816
    .line 817
    move-result v7

    .line 818
    invoke-direct {v4, v10, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 819
    .line 820
    .line 821
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zza:Ljava/lang/String;

    .line 822
    .line 823
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 824
    .line 825
    .line 826
    move-result v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 827
    sparse-switch v10, :sswitch_data_1

    .line 828
    .line 829
    .line 830
    goto :goto_b

    .line 831
    :sswitch_6
    const-string v10, "top-center"

    .line 832
    .line 833
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 834
    .line 835
    .line 836
    move-result v7

    .line 837
    if-eqz v7, :cond_20

    .line 838
    .line 839
    move v11, v9

    .line 840
    goto :goto_c

    .line 841
    :sswitch_7
    const-string v10, "bottom-center"

    .line 842
    .line 843
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 844
    .line 845
    .line 846
    move-result v7

    .line 847
    if-eqz v7, :cond_20

    .line 848
    .line 849
    move v11, v15

    .line 850
    goto :goto_c

    .line 851
    :sswitch_8
    const-string v10, "bottom-right"

    .line 852
    .line 853
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 854
    .line 855
    .line 856
    move-result v7

    .line 857
    if-eqz v7, :cond_20

    .line 858
    .line 859
    move v11, v14

    .line 860
    goto :goto_c

    .line 861
    :sswitch_9
    const-string v10, "bottom-left"

    .line 862
    .line 863
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    move-result v7

    .line 867
    if-eqz v7, :cond_20

    .line 868
    .line 869
    move v11, v13

    .line 870
    goto :goto_c

    .line 871
    :sswitch_a
    const-string v10, "top-left"

    .line 872
    .line 873
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    move-result v7

    .line 877
    if-eqz v7, :cond_20

    .line 878
    .line 879
    const/4 v11, 0x0

    .line 880
    goto :goto_c

    .line 881
    :sswitch_b
    const-string v10, "center"

    .line 882
    .line 883
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 884
    .line 885
    .line 886
    move-result v7

    .line 887
    if-eqz v7, :cond_20

    .line 888
    .line 889
    move v11, v12

    .line 890
    goto :goto_c

    .line 891
    :cond_20
    :goto_b
    move v11, v8

    .line 892
    :goto_c
    const/16 v7, 0x9

    .line 893
    .line 894
    const/16 v8, 0xa

    .line 895
    .line 896
    if-eqz v11, :cond_26

    .line 897
    .line 898
    const/16 v10, 0xe

    .line 899
    .line 900
    if-eq v11, v9, :cond_25

    .line 901
    .line 902
    if-eq v11, v12, :cond_24

    .line 903
    .line 904
    const/16 v12, 0xc

    .line 905
    .line 906
    if-eq v11, v13, :cond_23

    .line 907
    .line 908
    if-eq v11, v15, :cond_22

    .line 909
    .line 910
    const/16 v7, 0xb

    .line 911
    .line 912
    if-eq v11, v14, :cond_21

    .line 913
    .line 914
    :try_start_2
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 915
    .line 916
    .line 917
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 918
    .line 919
    .line 920
    goto :goto_d

    .line 921
    :cond_21
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 922
    .line 923
    .line 924
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 925
    .line 926
    .line 927
    goto :goto_d

    .line 928
    :cond_22
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 932
    .line 933
    .line 934
    goto :goto_d

    .line 935
    :cond_23
    invoke-virtual {v4, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 936
    .line 937
    .line 938
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 939
    .line 940
    .line 941
    goto :goto_d

    .line 942
    :cond_24
    const/16 v7, 0xd

    .line 943
    .line 944
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 945
    .line 946
    .line 947
    goto :goto_d

    .line 948
    :cond_25
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v4, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 952
    .line 953
    .line 954
    goto :goto_d

    .line 955
    :cond_26
    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 956
    .line 957
    .line 958
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 959
    .line 960
    .line 961
    :goto_d
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzn:Landroid/widget/LinearLayout;

    .line 962
    .line 963
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbsi;

    .line 964
    .line 965
    invoke-direct {v8, v1}, Lcom/google/android/gms/internal/ads/zzbsi;-><init>(Lcom/google/android/gms/internal/ads/zzbsj;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 969
    .line 970
    .line 971
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzn:Landroid/widget/LinearLayout;

    .line 972
    .line 973
    const-string v8, "Close button"

    .line 974
    .line 975
    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 976
    .line 977
    .line 978
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 979
    .line 980
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzn:Landroid/widget/LinearLayout;

    .line 981
    .line 982
    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 983
    .line 984
    .line 985
    :try_start_3
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 986
    .line 987
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 992
    .line 993
    .line 994
    const/4 v10, 0x0

    .line 995
    aget v7, v16, v10

    .line 996
    .line 997
    invoke-static {v3, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    .line 998
    .line 999
    .line 1000
    move-result v7

    .line 1001
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    .line 1002
    .line 1003
    .line 1004
    aget v8, v16, v9

    .line 1005
    .line 1006
    invoke-static {v3, v8}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    .line 1007
    .line 1008
    .line 1009
    move-result v3

    .line 1010
    invoke-virtual {v4, v0, v10, v7, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1011
    .line 1012
    .line 1013
    :try_start_4
    aget v0, v16, v10

    .line 1014
    .line 1015
    aget v3, v16, v9

    .line 1016
    .line 1017
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzo:Lcom/google/android/gms/internal/ads/zzbsq;

    .line 1018
    .line 1019
    if-eqz v4, :cond_27

    .line 1020
    .line 1021
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzh:I

    .line 1022
    .line 1023
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zze:I

    .line 1024
    .line 1025
    invoke-interface {v4, v0, v3, v7, v8}, Lcom/google/android/gms/internal/ads/zzbsq;->zza(IIII)V

    .line 1026
    .line 1027
    .line 1028
    :cond_27
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 1029
    .line 1030
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzcgv;->zzb(II)Lcom/google/android/gms/internal/ads/zzcgv;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaj(Lcom/google/android/gms/internal/ads/zzcgv;)V

    .line 1035
    .line 1036
    .line 1037
    const/16 v17, 0x0

    .line 1038
    .line 1039
    aget v0, v16, v17

    .line 1040
    .line 1041
    aget v3, v16, v9

    .line 1042
    .line 1043
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 1044
    .line 1045
    .line 1046
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzk:Landroid/app/Activity;

    .line 1047
    .line 1048
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    .line 1049
    .line 1050
    .line 1051
    move-result-object v4

    .line 1052
    aget v4, v4, v17

    .line 1053
    .line 1054
    sub-int/2addr v3, v4

    .line 1055
    iget v4, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzh:I

    .line 1056
    .line 1057
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zze:I

    .line 1058
    .line 1059
    invoke-virtual {v1, v0, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzbsp;->zzk(IIII)V

    .line 1060
    .line 1061
    .line 1062
    const-string v0, "resized"

    .line 1063
    .line 1064
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzl(Ljava/lang/String;)V

    .line 1065
    .line 1066
    .line 1067
    monitor-exit v2

    .line 1068
    return-void

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v0

    .line 1074
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1077
    .line 1078
    .line 1079
    const-string v4, "Cannot show popup window: "

    .line 1080
    .line 1081
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    .line 1083
    .line 1084
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object v0

    .line 1091
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 1092
    .line 1093
    .line 1094
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzq:Landroid/widget/RelativeLayout;

    .line 1095
    .line 1096
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzj:Lcom/google/android/gms/internal/ads/zzcfb;

    .line 1097
    .line 1098
    move-object v4, v3

    .line 1099
    check-cast v4, Landroid/view/View;

    .line 1100
    .line 1101
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1102
    .line 1103
    .line 1104
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzr:Landroid/view/ViewGroup;

    .line 1105
    .line 1106
    if-eqz v0, :cond_28

    .line 1107
    .line 1108
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzm:Landroid/widget/ImageView;

    .line 1109
    .line 1110
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1111
    .line 1112
    .line 1113
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzr:Landroid/view/ViewGroup;

    .line 1114
    .line 1115
    move-object v4, v3

    .line 1116
    check-cast v4, Landroid/view/View;

    .line 1117
    .line 1118
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1119
    .line 1120
    .line 1121
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbsj;->zzl:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 1122
    .line 1123
    invoke-interface {v3, v0}, Lcom/google/android/gms/internal/ads/zzcfb;->zzaj(Lcom/google/android/gms/internal/ads/zzcgv;)V

    .line 1124
    .line 1125
    .line 1126
    :cond_28
    monitor-exit v2

    .line 1127
    return-void

    .line 1128
    :cond_29
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 1129
    .line 1130
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    monitor-exit v2

    .line 1134
    return-void

    .line 1135
    :cond_2a
    :goto_e
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 1136
    .line 1137
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 1138
    .line 1139
    .line 1140
    monitor-exit v2

    .line 1141
    return-void

    .line 1142
    :cond_2b
    const-string v0, "Invalid width and height options. Cannot resize."

    .line 1143
    .line 1144
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsp;->zzh(Ljava/lang/String;)V

    .line 1145
    .line 1146
    .line 1147
    monitor-exit v2

    .line 1148
    return-void

    .line 1149
    :goto_f
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1150
    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method

.method public final zzd(IIZ)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzi:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p3

    .line 4
    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 5
    .line 6
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 7
    .line 8
    monitor-exit p3

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw p1
.end method

.method public final zze(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzc:I

    .line 2
    .line 3
    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzd:I

    .line 4
    .line 5
    return-void
.end method

.method public final zzf()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzi:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->zzp:Landroid/widget/PopupWindow;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method
