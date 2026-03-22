.class public Lcom/google/android/engage/service/DeleteClustersRequest$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/service/DeleteClustersRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zza:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzc:I

.field private zzd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzc:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzd:Z

    .line 14
    .line 15
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzc:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;)Lcom/google/android/engage/common/datamodel/AccountProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzd:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public addClusterType(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zza:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 8
    .line 9
    .line 10
    return-object p0
.end method

.method public build()Lcom/google/android/engage/service/DeleteClustersRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/DeleteClustersRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/service/DeleteClustersRequest;-><init>(Lcom/google/android/engage/service/DeleteClustersRequest$Builder;Lcom/google/android/engage/service/zzaf;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAccountProfile(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/AccountProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDeleteReason(I)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzc:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setSyncAcrossDevices(Z)Lcom/google/android/engage/service/DeleteClustersRequest$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/google/android/engage/service/DeleteClustersRequest$Builder;->zzd:Z

    .line 2
    .line 3
    return-object p0
.end method
