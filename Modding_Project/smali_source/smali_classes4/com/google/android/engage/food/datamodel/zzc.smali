.class final Lcom/google/android/engage/food/datamodel/zzc;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field private final zza:Landroid/net/Uri;

.field private final zzb:Lcom/google/android/engage/common/datamodel/zzu;

.field private final zzc:Lcom/google/android/engage/common/datamodel/Rating;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzd:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/food/datamodel/zza;Lcom/google/android/engage/food/datamodel/zzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/food/datamodel/zza;->zzb(Lcom/google/android/engage/food/datamodel/zza;)Lcom/google/android/engage/common/datamodel/zzs;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-virtual {p2}, Lcom/google/android/engage/common/datamodel/zzs;->zzd()Lcom/google/android/engage/common/datamodel/zzu;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzb:Lcom/google/android/engage/common/datamodel/zzu;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/engage/food/datamodel/zza;->zza(Lcom/google/android/engage/food/datamodel/zza;)Landroid/net/Uri;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/google/android/engage/food/datamodel/zzc;->zza:Landroid/net/Uri;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/google/android/engage/food/datamodel/zza;->zzc(Lcom/google/android/engage/food/datamodel/zza;)Lcom/google/android/engage/common/datamodel/Rating;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzc:Lcom/google/android/engage/common/datamodel/Rating;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/google/android/engage/food/datamodel/zza;->zzj(Lcom/google/android/engage/food/datamodel/zza;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzd:Ljava/lang/String;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final zza()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/zzc;->zza:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzb:Lcom/google/android/engage/common/datamodel/zzu;

    .line 7
    .line 8
    const-string v2, "A"

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/zzu;->zza()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/engage/food/datamodel/zzc;->zza:Landroid/net/Uri;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    const-string v2, "B"

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzd:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    const-string v2, "D"

    .line 35
    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzc:Lcom/google/android/engage/common/datamodel/Rating;

    .line 40
    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    const-string v2, "C"

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Rating;->zza()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-object v0
.end method

.method public final zzc()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzb:Lcom/google/android/engage/common/datamodel/zzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzu;->zzb()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzd()Lcom/google/common/base/Optional;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzc:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zze()Lcom/google/common/base/Optional;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzd:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/zzc;->zzb:Lcom/google/android/engage/common/datamodel/zzu;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzu;->zzc()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
