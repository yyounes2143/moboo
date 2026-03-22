.class public final Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/common/datamodel/SubscriptionEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:I

.field private zzc:Ljava/lang/Long;

.field private final zzd:Lcom/google/common/collect/ImmutableList$Builder;

.field private final zze:Lcom/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzb:I

    .line 6
    .line 7
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 12
    .line 13
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 18
    .line 19
    return-void
.end method

.method public static bridge synthetic zza(Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzb:I

    .line 2
    .line 3
    return p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzc(Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;)Lcom/google/common/collect/ImmutableList$Builder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzd(Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzc:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zze(Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addBundledSubscription(Lcom/google/android/engage/common/datamodel/BundledSubscription;)Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/BundledSubscription;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addBundledSubscriptions(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/BundledSubscription;",
            ">;)",
            "Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zze:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addEntitlement(Lcom/google/android/engage/common/datamodel/SubscriptionEntitlement;)Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;
    .locals 1
    .param p1    # Lcom/google/android/engage/common/datamodel/SubscriptionEntitlement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public addEntitlements(Ljava/util/List;)Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;
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
            "Lcom/google/android/engage/common/datamodel/SubscriptionEntitlement;",
            ">;)",
            "Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzd:Lcom/google/common/collect/ImmutableList$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/google/android/engage/common/datamodel/SubscriptionEntity;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/common/datamodel/SubscriptionEntity;-><init>(Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;Lcom/google/android/engage/common/datamodel/zzap;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setExpirationTimeMillis(J)Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzc:Ljava/lang/Long;

    .line 6
    .line 7
    return-object p0
.end method

.method public setProviderPackageName(Ljava/lang/String;)Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSubscriptionType(I)Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/google/android/engage/common/datamodel/SubscriptionEntity$Builder;->zzb:I

    .line 2
    .line 3
    return-object p0
.end method
