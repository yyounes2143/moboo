.class public final Lcom/google/android/engage/common/datamodel/ContinuationCluster;
.super Lcom/google/android/engage/common/datamodel/zzf;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/ContinuationCluster$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzm;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/ContinuationCluster$Builder;Lcom/google/android/engage/common/datamodel/zzn;)V
    .locals 1

    .line 1
    const/4 p2, 0x3

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/zzf;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/ContinuationCluster$Builder;->zza(Lcom/google/android/engage/common/datamodel/ContinuationCluster$Builder;)Lcom/google/android/engage/common/datamodel/zzk;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance p2, Lcom/google/android/engage/common/datamodel/zzm;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p2, p1, v0}, Lcom/google/android/engage/common/datamodel/zzm;-><init>(Lcom/google/android/engage/common/datamodel/zzk;Lcom/google/android/engage/common/datamodel/zzl;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/ContinuationCluster;->zza:Lcom/google/android/engage/common/datamodel/zzm;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getAccountProfile()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/AccountProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ContinuationCluster;->zza:Lcom/google/android/engage/common/datamodel/zzm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzm;->zzb()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDisplayTimeWindows()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ContinuationCluster;->zza:Lcom/google/android/engage/common/datamodel/zzm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzm;->zzc()Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Entity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ContinuationCluster;->zza:Lcom/google/android/engage/common/datamodel/zzm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzm;->zzd()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSyncAcrossDevices()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/ContinuationCluster;->zza:Lcom/google/android/engage/common/datamodel/zzm;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzm;->zze()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/zzf;->zza()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/ContinuationCluster;->zza:Lcom/google/android/engage/common/datamodel/zzm;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/zzm;->zza()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
