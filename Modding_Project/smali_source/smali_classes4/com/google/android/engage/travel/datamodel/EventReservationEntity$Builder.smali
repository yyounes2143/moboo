.class public final Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/travel/datamodel/EventReservationEntity;
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

.field private zza:Ljava/lang/Long;

.field private zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private zzc:I

.field private zzd:Lcom/google/android/engage/common/datamodel/Address;

.field private zze:Ljava/lang/Long;

.field private zzf:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private zzg:Lcom/google/android/engage/common/datamodel/ServiceProvider;

.field private final zzh:Lcom/google/common/collect/ImmutableList$Builder;

.field private zzi:Lcom/google/android/engage/common/datamodel/Price;

.field private zzj:Ljava/lang/String;

.field private zzk:Lcom/google/android/engage/common/datamodel/Rating;

.field private final zzl:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zzm:Lcom/google/android/engage/common/datamodel/zzai;


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
    iput-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzl:Lcom/google/common/collect/ImmutableList$Builder;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/engage/common/datamodel/zzai;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/engage/common/datamodel/zzai;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 22
    .line 23
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 28
    .line 29
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzc:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzd:Lcom/google/android/engage/common/datamodel/Address;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzf:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzi:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzf(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Rating;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzk:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzg(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzai;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzh(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/ServiceProvider;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzg:Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzi(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzj(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzl:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzk(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zze:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzl(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zza:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzm(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addAllDisplayTimeWindow(Ljava/util/List;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
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
            "Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addBadge(Lcom/google/android/engage/common/datamodel/Badge;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Badge;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addBadges(Ljava/util/List;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/Badge;",
            ">;)",
            "Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzh:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentCategories(Ljava/util/List;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
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
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzl:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addContentCategory(I)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzl:Lcom/google/common/collect/ImmutableList$Builder;

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

.method public addDisplayTimeWindow(Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImage(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/Image;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzc(Lcom/google/android/engage/common/datamodel/Image;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addPosterImages(Ljava/util/List;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
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
            "Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzd(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitle(Ljava/lang/String;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zze(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addSubtitles(Ljava/util/List;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
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
            "Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzf(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/travel/datamodel/EventReservationEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;-><init>(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;Lcom/google/android/engage/travel/datamodel/zzc;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setActionUri(Landroid/net/Uri;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzg(Landroid/net/Uri;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzh(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEndTime(Ljava/lang/Long;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
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
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zze:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setEntityId(Ljava/lang/String;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzi(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setEventMode(I)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzc:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocalizedEndTime(Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzf:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocalizedStartTime(Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocation(Lcom/google/android/engage/common/datamodel/Address;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Address;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzd:Lcom/google/android/engage/common/datamodel/Address;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPrice(Lcom/google/android/engage/common/datamodel/Price;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Price;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzi:Lcom/google/android/engage/common/datamodel/Price;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPriceCallout(Ljava/lang/String;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRating(Lcom/google/android/engage/common/datamodel/Rating;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/Rating;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzk:Lcom/google/android/engage/common/datamodel/Rating;

    .line 2
    .line 3
    return-object p0
.end method

.method public setReservationId(Ljava/lang/String;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzi(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public setServiceProvider(Lcom/google/android/engage/common/datamodel/ServiceProvider;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/ServiceProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzg:Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStartTime(Ljava/lang/Long;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
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
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zza:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm:Lcom/google/android/engage/common/datamodel/zzai;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/engage/common/datamodel/zzai;->zzj(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
