.class public interface abstract Lcom/google/android/engage/protocol/IAppEngageServiceDeleteClustersCallback;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/protocol/IAppEngageServiceDeleteClustersCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDeleteClusters(Landroid/os/Bundle;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
