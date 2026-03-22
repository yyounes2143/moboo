.class public final Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;
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

.field private final zzf:Lcom/google/android/engage/common/datamodel/Address;

.field private final zzg:Lcom/google/android/engage/common/datamodel/Address;

.field private final zzh:Lcom/google/android/engage/common/datamodel/ServiceProvider;

.field private final zzi:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzj:Ljava/lang/String;

.field private final zzk:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;Lcom/google/android/engage/travel/datamodel/zzi;)V
    .locals 0

    .line 1
    const/16 p2, 0x1e

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zzf(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzai;

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
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zzh(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzb:Ljava/lang/Long;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zzc(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zzi(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzd:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zzd(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zza(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzf:Lcom/google/android/engage/common/datamodel/Address;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zzb(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Address;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zzg(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zze(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/Price;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->zzj(Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzj:Ljava/lang/String;

    .line 69
    .line 70
    iget-object p1, p1, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzk:Lcom/google/common/collect/ImmutableList;

    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public getActionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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

.method public getConfirmationId()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzk:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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

.method public getLocalizedPickupTime()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalizedReturnTime()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

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

.method public getPickupAddress()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzf:Lcom/google/android/engage/common/datamodel/Address;

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

.method public getPickupTime()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzb:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/Price;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzj:Ljava/lang/String;

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

.method public getReturnAddress()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Address;

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

.method public getReturnTime()Lcom/google/common/base/Optional;
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzd:Ljava/lang/Long;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/ServiceProvider;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzb:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzc:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    const-string v2, "I"

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzd:Ljava/lang/Long;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const-string v2, "J"

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzf:Lcom/google/android/engage/common/datamodel/Address;

    .line 69
    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    const-string v2, "D"

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Address;->zza()Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Address;

    .line 82
    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    const-string v2, "E"

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Address;->zza()Landroid/os/Bundle;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzh:Lcom/google/android/engage/common/datamodel/ServiceProvider;

    .line 95
    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    const-string v2, "F"

    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/ServiceProvider;->zza()Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/Price;

    .line 108
    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    const-string v2, "G"

    .line 112
    .line 113
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzj:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_8

    .line 127
    .line 128
    const-string v2, "H"

    .line 129
    .line 130
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_8
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/VehicleRentalReservationEntity;->zzk:Lcom/google/common/collect/ImmutableList;

    .line 134
    .line 135
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-nez v2, :cond_a

    .line 140
    .line 141
    new-instance v2, Ljava/util/ArrayList;

    .line 142
    .line 143
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result v3

    .line 150
    const/4 v4, 0x0

    .line 151
    :goto_0
    if-ge v4, v3, :cond_9

    .line 152
    .line 153
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    check-cast v5, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 158
    .line 159
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    add-int/lit8 v4, v4, 0x1

    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_9
    const-string v1, "K"

    .line 170
    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 172
    .line 173
    .line 174
    :cond_a
    return-object v0
.end method
