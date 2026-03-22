.class public final Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lorg/joda/time/Instant;

.field private zzb:Lorg/joda/time/DateTimeZone;


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

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;)Lorg/joda/time/DateTimeZone;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;->zzb:Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;)Lorg/joda/time/Instant;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;->zza:Lorg/joda/time/Instant;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp;-><init>(Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;Lcom/google/android/engage/common/datamodel/zzz;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setTimestamp(Lorg/joda/time/Instant;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;
    .locals 0
    .param p1    # Lorg/joda/time/Instant;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;->zza:Lorg/joda/time/Instant;

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimezone(Lorg/joda/time/DateTimeZone;)Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;
    .locals 0
    .param p1    # Lorg/joda/time/DateTimeZone;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/LocalizedTimestamp$Builder;->zzb:Lorg/joda/time/DateTimeZone;

    .line 2
    .line 3
    return-object p0
.end method
