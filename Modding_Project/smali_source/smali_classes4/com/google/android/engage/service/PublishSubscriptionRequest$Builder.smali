.class public final Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/engage/service/PublishSubscriptionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zza:Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

.field private zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;


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

.method public static bridge synthetic zza(Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;)Lcom/google/android/engage/common/datamodel/AccountProfile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic zzb(Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;)Lcom/google/android/engage/common/datamodel/SubscriptionEntity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;->zza:Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/engage/service/PublishSubscriptionRequest;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/engage/service/PublishSubscriptionRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/google/android/engage/service/PublishSubscriptionRequest;-><init>(Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;Lcom/google/android/engage/service/zzak;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public setAccountProfile(Lcom/google/android/engage/common/datamodel/AccountProfile;)Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/AccountProfile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;->zzb:Lcom/google/android/engage/common/datamodel/AccountProfile;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSubscription(Lcom/google/android/engage/common/datamodel/SubscriptionEntity;)Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;
    .locals 0
    .param p1    # Lcom/google/android/engage/common/datamodel/SubscriptionEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/engage/service/PublishSubscriptionRequest$Builder;->zza:Lcom/google/android/engage/common/datamodel/SubscriptionEntity;

    .line 2
    .line 3
    return-object p0
.end method
