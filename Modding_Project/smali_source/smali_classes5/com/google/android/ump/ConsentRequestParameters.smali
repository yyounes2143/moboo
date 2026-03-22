.class public Lcom/google/android/ump/ConsentRequestParameters;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ump/ConsentRequestParameters$Builder;
    }
.end annotation


# instance fields
.field private final zza:Z

.field private final zzb:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/ump/ConsentDebugSettings;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/ump/ConsentRequestParameters$Builder;Lcom/google/android/ump/zzb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzc(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Z

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    iput-boolean p2, p0, Lcom/google/android/ump/ConsentRequestParameters;->zza:Z

    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zzb(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    iput-object p2, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzb:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->zza(Lcom/google/android/ump/ConsentRequestParameters$Builder;)Lcom/google/android/ump/ConsentDebugSettings;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public getConsentDebugSettings()Lcom/google/android/ump/ConsentDebugSettings;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzc:Lcom/google/android/ump/ConsentDebugSettings;

    .line 2
    .line 3
    return-object v0
.end method

.method public isTagForUnderAgeOfConsent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/ump/ConsentRequestParameters;->zza:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zza()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/ump/ConsentRequestParameters;->zzb:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
