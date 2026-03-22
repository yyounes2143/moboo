.class public final Lcom/google/android/engage/common/datamodel/Rating;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/Rating$Builder;
    }
.end annotation


# instance fields
.field private final zza:D

.field private final zzb:D

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/Long;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/Rating$Builder;Lcom/google/android/engage/common/datamodel/zzag;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzb(Lcom/google/android/engage/common/datamodel/Rating$Builder;)D

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/google/android/engage/common/datamodel/Rating;->zza:D

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zza(Lcom/google/android/engage/common/datamodel/Rating$Builder;)D

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzb:D

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzd(Lcom/google/android/engage/common/datamodel/Rating$Builder;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzc:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/Rating$Builder;->zzc(Lcom/google/android/engage/common/datamodel/Rating$Builder;)Ljava/lang/Long;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzd:Ljava/lang/Long;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getCount()Lcom/google/common/base/Optional;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzc:Ljava/lang/String;

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

.method public getCountValue()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzd:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzb:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getMaxValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/common/datamodel/Rating;->zza:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "A"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/google/android/engage/common/datamodel/Rating;->zza:D

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 11
    .line 12
    .line 13
    const-string v1, "B"

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzb:D

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzc:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const-string v2, "C"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/Rating;->zzd:Ljava/lang/Long;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string v2, "D"

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-object v0
.end method
