.class public final Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList$Builder<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;"
        }
    .end annotation
.end field

.field private zza:Lcom/google/android/engage/common/datamodel/Address;

.field private zzb:Ljava/lang/Long;

.field private zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private zzd:Ljava/lang/Integer;

.field private final zze:Lcom/google/android/engage/common/datamodel/zzai;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzai;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzai;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 16
    .line 17
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/Address;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzai;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;)Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zzd:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zzb:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;",
            ">;)",
            "Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzc(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;)",
            "Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzd(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitle(Ljava/lang/String;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zze(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitles(Ljava/util/List;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzf(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity;-><init>(Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;Lcom/google/android/engage/food/datamodel/zzi;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionUri(Landroid/net/Uri;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzg(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzh(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzi(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setLocalizedReservationStartTime(Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(Lcom/google/android/engage/common/datamodel/Address;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Address;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zza:Lcom/google/android/engage/common/datamodel/Address;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReservationId(Ljava/lang/String;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzi(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setReservationStartTime(Ljava/lang/Long;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zzb:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTableSize(Ljava/lang/Integer;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zzd:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/food/datamodel/RestaurantReservationEntity$Builder;->zze:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzj(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
