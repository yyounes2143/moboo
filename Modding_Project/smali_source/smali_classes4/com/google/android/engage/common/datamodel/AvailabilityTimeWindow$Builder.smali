.class public final Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/Long;

.field private zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

.field private zzc:Ljava/lang/Long;

.field private zzd:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzd:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzc:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zza:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow;-><init>(Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;Lcom/google/android/engage/common/datamodel/zzd;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setEndTimestampMillis(J)Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzc:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setLocalizedEndTimestamp(Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;)Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzd:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLocalizedStartTimestamp(Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;)Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zzb:Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    return-object p0
.end method

.method public setStartTimestampMillis(J)Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/AvailabilityTimeWindow$Builder;->zza:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method
