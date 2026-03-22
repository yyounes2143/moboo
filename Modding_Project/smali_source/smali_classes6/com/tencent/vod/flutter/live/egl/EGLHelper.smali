.class public interface abstract Lcom/tencent/vod/flutter/live/egl/EGLHelper;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getContext()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract swapBuffers()Z
.end method

.method public abstract unmakeCurrent()V
.end method
