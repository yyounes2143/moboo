.class public Lcom/google/android/ump/ConsentDebugSettings;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/ump/ConsentDebugSettings$Builder;,
        Lcom/google/android/ump/ConsentDebugSettings$DebugGeography;
    }
.end annotation


# instance fields
.field private final zza:Z

.field private final zzb:I


# direct methods
.method public synthetic constructor <init>(ZLcom/google/android/ump/ConsentDebugSettings$Builder;Lcom/google/android/ump/zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/ump/ConsentDebugSettings;->zza:Z

    .line 5
    .line 6
    invoke-static {p2}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->zza(Lcom/google/android/ump/ConsentDebugSettings$Builder;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    iput p1, p0, Lcom/google/android/ump/ConsentDebugSettings;->zzb:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getDebugGeography()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/ump/ConsentDebugSettings;->zzb:I

    .line 2
    .line 3
    return v0
.end method

.method public isTestDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/ump/ConsentDebugSettings;->zza:Z

    .line 2
    .line 3
    return v0
.end method
