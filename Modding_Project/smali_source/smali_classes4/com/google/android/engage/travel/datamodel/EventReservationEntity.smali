.class public final Lcom/google/android/engage/travel/datamodel/EventReservationEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;,
        Lcom/google/android/engage/travel/datamodel/EventReservationEntity$EligibleContentCategory;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzak;

.field private final zzb:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private final zzd:I

.field private final zze:Lcom/google/android/engage/common/datamodel/Address;

.field private final zzf:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzg:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private final zzh:Lcom/google/android/engage/common/datamodel/ServiceProvider;

.field private final zzi:Lcom/google/common/collect/ImmutableList;

.field private final zzj:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzk:Ljava/lang/String;

.field private final zzl:Lcom/google/android/engage/common/datamodel/Rating;

.field private final zzm:Lcom/google/common/collect/ImmutableList;

.field private final zzn:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;Lcom/google/android/engage/travel/datamodel/zzc;)V
    .locals 0

    .line 1
    const/16 p2, 0x21

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzg(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzai;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    invoke-virtual {p2}, Lcom/google/android/engage/common/datamodel/zzai;->zzk()Lcom/google/android/engage/common/datamodel/zzak;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzl(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzb:Ljava/lang/Long;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzd(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zza(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)I

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iput p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzd:I

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzb(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/Address;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzk(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Ljava/lang/Long;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzf:Ljava/lang/Long;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzc(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzh(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzi(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zze(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzm(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzk:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzf(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Rating;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzl:Lcom/google/android/engage/common/datamodel/Rating;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->zzj(Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p2}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzm:Lcom/google/common/collect/ImmutableList;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/google/android/engage/travel/datamodel/EventReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzn:Lcom/google/common/collect/ImmutableList;

    .line 103
    .line 104
    return-void
.end method


# virtual methods
.method public getActionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzak;->zza()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getBadgeList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Badge;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentCategoryList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzm:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDescription()Lcom/google/common/base/Optional;
    .locals 1
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzak;->zzc()Lcom/google/common/base/Optional;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzn:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEndTime()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzf:Ljava/lang/Long;

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

.method public getEntityId()Lcom/google/common/base/Optional;
    .locals 1
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzak;->zzd()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getEventMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzd:I

    .line 2
    .line 3
    return v0
.end method

.method public getLocalizedEndTime()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

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

.method public getLocalizedStartTime()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocation()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Address;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/Address;

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

.method public getPosterImages()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/engage/common/datamodel/Image;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzak;->zzf()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getPrice()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Price;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

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

.method public getPriceCallout()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzk:Ljava/lang/String;

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

.method public getRating()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/Rating;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzl:Lcom/google/android/engage/common/datamodel/Rating;

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

.method public getReservationId()Lcom/google/common/base/Optional;
    .locals 1
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzak;->zzd()Lcom/google/common/base/Optional;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getServiceProvider()Lcom/google/common/base/Optional;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional<",
            "Lcom/google/android/engage/common/datamodel/ServiceProvider;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/ServiceProvider;

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

.method public getStartTime()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzb:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubtitleList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzak;->zzg()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/engage/common/datamodel/zzak;->zze()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 6
    .line 7
    const-string v2, "A"

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/zzak;->zzb()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzb:Ljava/lang/Long;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "B"

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v2, "L"

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;->zza()Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzd:I

    .line 43
    .line 44
    const-string v2, "C"

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/Address;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    const-string v2, "D"

    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Address;->zza()Landroid/os/Bundle;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzf:Ljava/lang/Long;

    .line 63
    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    const-string v2, "E"

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v3

    .line 72
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 73
    .line 74
    .line 75
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const-string v2, "M"

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;->zza()Landroid/os/Bundle;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86
    .line 87
    .line 88
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    const-string v2, "F"

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/ServiceProvider;->zza()Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzi:Lcom/google/common/collect/ImmutableList;

    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    const/4 v3, 0x0

    .line 108
    if-nez v2, :cond_7

    .line 109
    .line 110
    new-instance v2, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    move v5, v3

    .line 120
    :goto_0
    if-ge v5, v4, :cond_6

    .line 121
    .line 122
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    check-cast v6, Lcom/google/android/engage/common/datamodel/Badge;

    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/google/android/engage/common/datamodel/Badge;->zza()Landroid/os/Bundle;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    const-string v1, "G"

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 141
    .line 142
    .line 143
    :cond_7
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 144
    .line 145
    if-eqz v1, :cond_8

    .line 146
    .line 147
    const-string v2, "H"

    .line 148
    .line 149
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    :cond_8
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzk:Ljava/lang/String;

    .line 157
    .line 158
    if-eqz v1, :cond_9

    .line 159
    .line 160
    const-string v2, "I"

    .line 161
    .line 162
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_9
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzl:Lcom/google/android/engage/common/datamodel/Rating;

    .line 166
    .line 167
    if-eqz v1, :cond_a

    .line 168
    .line 169
    const-string v2, "J"

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Rating;->zza()Landroid/os/Bundle;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 176
    .line 177
    .line 178
    :cond_a
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzm:Lcom/google/common/collect/ImmutableList;

    .line 179
    .line 180
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_b

    .line 185
    .line 186
    new-instance v2, Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 192
    .line 193
    .line 194
    const-string v1, "K"

    .line 195
    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    :cond_b
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/EventReservationEntity;->zzn:Lcom/google/common/collect/ImmutableList;

    .line 200
    .line 201
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-nez v2, :cond_d

    .line 206
    .line 207
    new-instance v2, Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 213
    .line 214
    .line 215
    move-result v4

    .line 216
    :goto_1
    if-ge v3, v4, :cond_c

    .line 217
    .line 218
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    check-cast v5, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 223
    .line 224
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    goto :goto_1

    .line 234
    :cond_c
    const-string v1, "N"

    .line 235
    .line 236
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 237
    .line 238
    .line 239
    :cond_d
    return-object v0
.end method
