.class public final Lcom/google/android/engage/travel/service/PublishReservationClusterRequest;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/travel/service/PublishReservationClusterRequest$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/travel/datamodel/ReservationCluster;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/travel/service/PublishReservationClusterRequest$Builder;Lcom/google/android/engage/travel/service/zzj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/travel/service/PublishReservationClusterRequest$Builder;->zza(Lcom/google/android/engage/travel/service/PublishReservationClusterRequest$Builder;)Lcom/google/android/engage/travel/datamodel/ReservationCluster;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/engage/travel/service/PublishReservationClusterRequest;->zza:Lcom/google/android/engage/travel/datamodel/ReservationCluster;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getReservationCluster()Lcom/google/android/engage/travel/datamodel/ReservationCluster;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/service/PublishReservationClusterRequest;->zza:Lcom/google/android/engage/travel/datamodel/ReservationCluster;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zza()Lcom/google/android/engage/service/zzac;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/engage/service/zzab;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/engage/service/zzab;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/engage/travel/service/PublishReservationClusterRequest;->zza:Lcom/google/android/engage/travel/datamodel/ReservationCluster;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/engage/service/zzab;->zza(Lcom/google/android/engage/common/datamodel/zzf;)Lcom/google/android/engage/service/zzab;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/engage/service/zzac;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/google/android/engage/service/zzac;-><init>(Lcom/google/android/engage/service/zzab;)V

    .line 14
    .line 15
    .line 16
    return-object v1
.end method
