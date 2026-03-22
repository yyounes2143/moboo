.class public abstract Lcom/google/android/engage/common/datamodel/Entity;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# instance fields
.field private final zza:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/google/android/engage/common/datamodel/Entity;->zza:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getEntityType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/engage/common/datamodel/Entity;->zza:I

    .line 2
    .line 3
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

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
    const-string v1, "E_T"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/engage/common/datamodel/Entity;->getEntityType()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
