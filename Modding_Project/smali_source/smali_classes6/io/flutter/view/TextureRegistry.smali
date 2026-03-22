.class public interface abstract Lio/flutter/view/TextureRegistry;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/view/TextureRegistry$SurfaceLifecycle;,
        Lio/flutter/view/TextureRegistry$SurfaceProducer;,
        Lio/flutter/view/TextureRegistry$GLTextureConsumer;,
        Lio/flutter/view/TextureRegistry$ImageConsumer;,
        Lio/flutter/view/TextureRegistry$OnTrimMemoryListener;,
        Lio/flutter/view/TextureRegistry$OnFrameConsumedListener;,
        Lio/flutter/view/TextureRegistry$ImageTextureEntry;,
        Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;,
        Lio/flutter/view/TextureRegistry$TextureEntry;
    }
.end annotation


# virtual methods
.method public abstract createImageTexture()Lio/flutter/view/TextureRegistry$ImageTextureEntry;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createSurfaceProducer()Lio/flutter/view/TextureRegistry$SurfaceProducer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createSurfaceProducer(Lio/flutter/view/TextureRegistry$SurfaceLifecycle;)Lio/flutter/view/TextureRegistry$SurfaceProducer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract createSurfaceTexture()Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract registerSurfaceTexture(Landroid/graphics/SurfaceTexture;)Lio/flutter/view/TextureRegistry$SurfaceTextureEntry;
    .param p1    # Landroid/graphics/SurfaceTexture;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
