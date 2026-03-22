.class public final Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;
    }
.end annotation


# instance fields
.field private final zza:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private final zzc:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzd:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;Lcom/google/android/engage/common/datamodel/zzd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzd(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zza:Ljava/lang/Long;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzb(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzc(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzc:Ljava/lang/Long;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zza(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzd:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public getEndTimestampMillis()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzc:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalizedEndTimestamp()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzd:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLocalizedStartTimestamp()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object v0
.end method

.method public getStartTimestampMillis()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zza:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
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
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zza:Ljava/lang/Long;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v2, "A"

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v2, "C"

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;->zza()Landroid/os/Bundle;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzc:Ljava/lang/Long;

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    const-string v2, "B"

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;->zzd:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    const-string v2, "D"

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;->zza()Landroid/os/Bundle;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-object v0
.end method
