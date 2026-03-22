.class public interface abstract Lcom/google/android/engage/protocol/IAppEngageService;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/engage/protocol/IAppEngageService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deleteClusters(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServiceDeleteClustersCallback;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/engage/protocol/IAppEngageServiceDeleteClustersCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isServiceAvailable(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServiceAvailableCallback;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/engage/protocol/IAppEngageServiceAvailableCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract publishClusters(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServicePublishClustersCallback;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/engage/protocol/IAppEngageServicePublishClustersCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePublishStatus(Landroid/os/Bundle;Lcom/google/android/engage/protocol/IAppEngageServicePublishStatusCallback;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/engage/protocol/IAppEngageServicePublishStatusCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
