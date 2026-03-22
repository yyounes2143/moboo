.class public final Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;
.super Lcom/google/android/engage/common/datamodel/Entity;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/engage/common/datamodel/zzak;

.field private final zzb:Lcom/google/android/engage/common/datamodel/Address;

.field private final zzc:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzd:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private final zzf:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private final zzg:Lcom/google/android/engage/common/datamodel/Price;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/engage/common/datamodel/Rating;

.field private final zzj:Lcom/google/common/collect/ImmutableList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;Lcom/google/android/engage/travel/datamodel/zze;)V
    .locals 2

    .line 1
    const/16 p2, 0x1d

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/google/android/engage/common/datamodel/Entity;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zzh(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/zzai;

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
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zzc(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Address;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzb:Lcom/google/android/engage/common/datamodel/Address;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zza(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzc:J

    .line 27
    .line 28
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zzb(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzd:J

    .line 33
    .line 34
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zzd(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zze(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzf:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zzf(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Price;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Price;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zzi(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzh:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->zzg(Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;)Lcom/google/android/engage/common/datamodel/Rating;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/Rating;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity$Builder;->displayTimeWindowBuilder:Lcom/google/common/collect/ImmutableList$Builder;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public getActionUri()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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

.method public getAddress()Lcom/google/android/engage/common/datamodel/Address;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzb:Lcom/google/android/engage/common/datamodel/Address;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheckInTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzc:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getCheckOutTime()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzd:J

    .line 2
    .line 3
    return-wide v0
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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzj:Lcom/google/common/collect/ImmutableList;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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

.method public getLocalizedCheckInTime()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalizedCheckOutTime()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzf:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Price;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzh:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/Rating;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v0, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zza:Lcom/google/android/engage/common/datamodel/zzak;

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
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzb:Lcom/google/android/engage/common/datamodel/Address;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    const-string v2, "B"

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Address;->zza()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-wide v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzd:J

    .line 30
    .line 31
    const-string v3, "D"

    .line 32
    .line 33
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 34
    .line 35
    .line 36
    iget-wide v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzc:J

    .line 37
    .line 38
    const-string v3, "C"

    .line 39
    .line 40
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzg:Lcom/google/android/engage/common/datamodel/Price;

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    const-string v2, "E"

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Price;->zza()Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzh:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    const-string v2, "F"

    .line 61
    .line 62
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzi:Lcom/google/android/engage/common/datamodel/Rating;

    .line 66
    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    const-string v2, "G"

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/Rating;->zza()Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zze:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 79
    .line 80
    if-eqz v1, :cond_4

    .line 81
    .line 82
    const-string v2, "H"

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;->zza()Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    :cond_4
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzf:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 92
    .line 93
    if-eqz v1, :cond_5

    .line 94
    .line 95
    const-string v2, "I"

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;->zza()Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    :cond_5
    iget-object v1, p0, Lcom/google/android/engage/travel/datamodel/LodgingReservationEntity;->zzj:Lcom/google/common/collect/ImmutableList;

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-nez v2, :cond_7

    .line 111
    .line 112
    new-instance v2, Ljava/util/ArrayList;

    .line 113
    .line 114
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    const/4 v4, 0x0

    .line 122
    :goto_0
    if-ge v4, v3, :cond_6

    .line 123
    .line 124
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    check-cast v5, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;

    .line 129
    .line 130
    invoke-virtual {v5}, Lcom/google/android/engage/common/datamodel/DisplayTimeWindow;->zza()Landroid/os/Bundle;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v4, v4, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_6
    const-string v1, "J"

    .line 141
    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 143
    .line 144
    .line 145
    :cond_7
    return-object v0
.end method
