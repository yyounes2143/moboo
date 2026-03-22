.class public final Lcom/google/android/gms/internal/ads/zzfkc;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdsd;

.field private final zzb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdsd;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 5
    .line 6
    sget-object p1, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfrl;

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/common/wrappers/Wrappers;->packageManager(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception p1

    .line 22
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 23
    .line 24
    const-string p2, "Failed to get application name"

    .line 25
    .line 26
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    const-string p1, ""

    .line 30
    .line 31
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zzb:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method private final zzj(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Lcom/google/android/gms/internal/ads/zzdsc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 12
    .line 13
    .line 14
    const-string p2, "app"

    .line 15
    .line 16
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zzb:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const-string p3, "ad_unit_id"

    .line 26
    .line 27
    invoke-virtual {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 28
    .line 29
    .line 30
    const-string p2, "ad_format"

    .line 31
    .line 32
    invoke-virtual {p8}, Lcom/google/android/gms/internal/ads/zzfkk;->zza()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 37
    .line 38
    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const-string p2, "action"

    .line 42
    .line 43
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 44
    .line 45
    .line 46
    :cond_0
    if-eqz p7, :cond_1

    .line 47
    .line 48
    const-string p1, "gqi"

    .line 49
    .line 50
    invoke-virtual {v0, p1, p7}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 51
    .line 52
    .line 53
    :cond_1
    if-ltz p5, :cond_2

    .line 54
    .line 55
    const-string p1, "max_ads"

    .line 56
    .line 57
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 62
    .line 63
    .line 64
    :cond_2
    if-ltz p6, :cond_3

    .line 65
    .line 66
    const-string p1, "cache_size"

    .line 67
    .line 68
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 73
    .line 74
    .line 75
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsc;->zzj()V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public final zza(IIJLcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Lcom/google/android/gms/internal/ads/zzdsc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "action"

    .line 8
    .line 9
    const-string v2, "cache_resize"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 12
    .line 13
    .line 14
    const-string v1, "cs_ts"

    .line 15
    .line 16
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 21
    .line 22
    .line 23
    const-string p3, "app"

    .line 24
    .line 25
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zzb:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 28
    .line 29
    .line 30
    const-string p3, "orig_ma"

    .line 31
    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 37
    .line 38
    .line 39
    const-string p1, "max_ads"

    .line 40
    .line 41
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzfkk;->zza()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string p2, "ad_format"

    .line 53
    .line 54
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 55
    .line 56
    .line 57
    const-string p1, "ad_unit_id"

    .line 58
    .line 59
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsc;->zzj()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public final zzb(IIJLjava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 2
    .param p5    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Lcom/google/android/gms/internal/ads/zzdsc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "plaac_ts"

    .line 8
    .line 9
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 14
    .line 15
    .line 16
    const-string p3, "app"

    .line 17
    .line 18
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zzb:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzfkk;->zza()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    const-string p4, "ad_format"

    .line 28
    .line 29
    invoke-virtual {v0, p4, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 30
    .line 31
    .line 32
    const-string p3, "ad_unit_id"

    .line 33
    .line 34
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 39
    .line 40
    .line 41
    const-string p3, "max_ads"

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p3, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 48
    .line 49
    .line 50
    const-string p1, "cache_size"

    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 57
    .line 58
    .line 59
    const-string p1, "action"

    .line 60
    .line 61
    const-string p2, "is_ad_available"

    .line 62
    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 64
    .line 65
    .line 66
    if-eqz p5, :cond_0

    .line 67
    .line 68
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide p1

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const-string p2, "plaay_ts"

    .line 77
    .line 78
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 79
    .line 80
    .line 81
    :cond_0
    if-eqz p6, :cond_1

    .line 82
    .line 83
    const-string p1, "gqi"

    .line 84
    .line 85
    invoke-virtual {v0, p1, p6}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 86
    .line 87
    .line 88
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsc;->zzj()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final zzc(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 9
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v5, -0x1

    .line 2
    const/4 v6, -0x1

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "pano_ts"

    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-wide v3, p1

    .line 8
    move-object v7, p3

    .line 9
    move-object v8, p4

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfkc;->zzj(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zzd(JLcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 9

    .line 1
    const/4 v6, -0x1

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "paeo_ts"

    .line 5
    .line 6
    const/4 v5, -0x1

    .line 7
    move-object v0, p0

    .line 8
    move-wide v3, p1

    .line 9
    move-object v8, p3

    .line 10
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfkc;->zzj(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final zze(JLcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 9

    .line 1
    const/4 v6, -0x1

    .line 2
    const/4 v7, 0x0

    .line 3
    const-string v1, "poll_ad"

    .line 4
    .line 5
    const-string v2, "ppac_ts"

    .line 6
    .line 7
    const/4 v5, -0x1

    .line 8
    move-object v0, p0

    .line 9
    move-wide v3, p1

    .line 10
    move-object v8, p3

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfkc;->zzj(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzf(JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Lcom/google/android/gms/internal/ads/zzdsc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "ppla_ts"

    .line 8
    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 14
    .line 15
    .line 16
    const-string p1, "app"

    .line 17
    .line 18
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zzb:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfkk;->zza()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string p2, "ad_format"

    .line 28
    .line 29
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 30
    .line 31
    .line 32
    const-string p1, "ad_unit_id"

    .line 33
    .line 34
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 39
    .line 40
    .line 41
    const-string p1, "max_ads"

    .line 42
    .line 43
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 48
    .line 49
    .line 50
    const-string p1, "cache_size"

    .line 51
    .line 52
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 57
    .line 58
    .line 59
    const-string p1, "action"

    .line 60
    .line 61
    const-string p2, "poll_ad"

    .line 62
    .line 63
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 64
    .line 65
    .line 66
    if-eqz p5, :cond_0

    .line 67
    .line 68
    const-string p1, "gqi"

    .line 69
    .line 70
    invoke-virtual {v0, p1, p5}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 71
    .line 72
    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsc;->zzj()V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final zzg(JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 9

    .line 1
    const-string v1, "poll_ad"

    .line 2
    .line 3
    const-string v2, "psvroc_ts"

    .line 4
    .line 5
    move-object v0, p0

    .line 6
    move-wide v3, p1

    .line 7
    move v5, p3

    .line 8
    move v6, p4

    .line 9
    move-object v7, p5

    .line 10
    move-object v8, p6

    .line 11
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzfkc;->zzj(Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkk;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final zzh(Ljava/util/Map;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Lcom/google/android/gms/internal/ads/zzdsc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "action"

    .line 8
    .line 9
    const-string v2, "start_preload"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 12
    .line 13
    .line 14
    const-string v1, "sp_ts"

    .line 15
    .line 16
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 21
    .line 22
    .line 23
    const-string p2, "app"

    .line 24
    .line 25
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zzb:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p3

    .line 42
    if-eqz p3, :cond_0

    .line 43
    .line 44
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    check-cast p3, Lcom/google/android/gms/ads/AdFormat;

    .line 49
    .line 50
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 71
    .line 72
    .line 73
    move-result p3

    .line 74
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    const-string v2, "_count"

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsc;->zzj()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final zzi(IJLcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zza:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Lcom/google/android/gms/internal/ads/zzdsc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "action"

    .line 8
    .line 9
    const-string v2, "start_preload"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 12
    .line 13
    .line 14
    const-string v1, "sp_ts"

    .line 15
    .line 16
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 21
    .line 22
    .line 23
    const-string p2, "app"

    .line 24
    .line 25
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkc;->zzb:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzfkk;->zza()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const-string p3, "ad_format"

    .line 35
    .line 36
    invoke-virtual {v0, p3, p2}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 37
    .line 38
    .line 39
    const-string p2, "ad_unit_id"

    .line 40
    .line 41
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzfkk;->zzb()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 46
    .line 47
    .line 48
    const-string p2, "max_ads"

    .line 49
    .line 50
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzdsc;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsc;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsc;->zzj()V

    .line 58
    .line 59
    .line 60
    return-void
.end method
