.class public final Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzak;

.field private final zzb:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private final zzd:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private final zzf:I

.field private final zzg:Lcom/google/android/engage/common/datamodel/Address;

.field private final zzh:Lcom/google/android/engage/common/datamodel/Address;

.field private final zzi:Lcom/google/android/engage/common/datamodel/ServiceProvider;

.field private final zzj:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzk:Ljava/lang/String;

.field private final zzl:Ljava/lang/String;

.field private final zzm:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzn:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private final zzo:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;Lcom/google/android/engage/travel/datamodel/zzh;)V
    .locals 0

    .line 1
    const/16 p2, 0x1f

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzh(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzai;

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
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzl(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzb:Ljava/lang/Long;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzf(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzj(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzd:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzd(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zza(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzf:I

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzc(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Address;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzb(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/Address;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzi(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzg(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzm(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzk:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzn(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzl:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zzk(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzm:Ljava/lang/Long;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->zze(Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzn:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzo:Lcom/google/common/collect/ImmutableList;

    .line 101
    .line 102
    return-void
.end method


# virtual methods
.method public getActionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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

.method public getArrivalLocation()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/Address;

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

.method public getArrivalTime()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzd:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBoardingTime()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzm:Ljava/lang/Long;

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

.method public getDepartureLocation()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Address;

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

.method public getDepartureTime()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzb:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzo:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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

.method public getLocalizedArrivalTime()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalizedBoardingTime()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzn:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

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

.method public getLocalizedDepartureTime()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzk:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/ServiceProvider;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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

.method public getTransportationNumber()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzl:Ljava/lang/String;

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

.method public getTransportationType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzf:I

    .line 2
    .line 3
    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/google/android/engage/common/datamodel/Entity;->toBundle()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzb:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzd:Ljava/lang/Long;

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const-string v2, "C"

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 53
    .line 54
    .line 55
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const-string v2, "M"

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;->zza()Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    iget v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzf:I

    .line 69
    .line 70
    const-string v2, "D"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Address;

    .line 76
    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    const-string v2, "E"

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Address;->zza()Landroid/os/Bundle;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/Address;

    .line 89
    .line 90
    if-eqz v1, :cond_5

    .line 91
    .line 92
    const-string v2, "F"

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Address;->zza()Landroid/os/Bundle;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 102
    .line 103
    if-eqz v1, :cond_6

    .line 104
    .line 105
    const-string v2, "G"

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/ServiceProvider;->zza()Landroid/os/Bundle;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 112
    .line 113
    .line 114
    :cond_6
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzj:Lcom/google/android/engage/common/datamodel/Price;

    .line 115
    .line 116
    if-eqz v1, :cond_7

    .line 117
    .line 118
    const-string v2, "H"

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 125
    .line 126
    .line 127
    :cond_7
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzk:Ljava/lang/String;

    .line 128
    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    const-string v2, "I"

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_8
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzl:Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    const-string v2, "J"

    .line 141
    .line 142
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    :cond_9
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzm:Ljava/lang/Long;

    .line 146
    .line 147
    if-eqz v1, :cond_a

    .line 148
    .line 149
    const-string v2, "K"

    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 156
    .line 157
    .line 158
    :cond_a
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzn:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 159
    .line 160
    if-eqz v1, :cond_b

    .line 161
    .line 162
    const-string v2, "N"

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;->zza()Landroid/os/Bundle;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 169
    .line 170
    .line 171
    :cond_b
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/TransportationReservationEntity;->zzo:Lcom/google/common/collect/ImmutableList;

    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-nez v2, :cond_d

    .line 178
    .line 179
    new-instance v2, Ljava/util/ArrayList;

    .line 180
    .line 181
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    const/4 v4, 0x0

    .line 189
    :goto_0
    if-ge v4, v3, :cond_c

    .line 190
    .line 191
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    check-cast v5, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 196
    .line 197
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    add-int/lit8 v4, v4, 0x1

    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_c
    const-string v1, "O"

    .line 208
    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 210
    .line 211
    .line 212
    :cond_d
    return-object v0
.end method
