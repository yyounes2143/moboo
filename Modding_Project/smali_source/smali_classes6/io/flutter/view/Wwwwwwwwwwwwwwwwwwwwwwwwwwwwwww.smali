.class public final synthetic Lio/flutter/view/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"


# direct methods
.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/view/TextureRegistry;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/view/TextureRegistry;)Lio/flutter/view/TextureRegistry$SurfaceProducer;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/flutter/view/TextureRegistry$SurfaceLifecycle;->manual:Lio/flutter/view/TextureRegistry$SurfaceLifecycle;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lio/flutter/view/TextureRegistry;->createSurfaceProducer(Lio/flutter/view/TextureRegistry$SurfaceLifecycle;)Lio/flutter/view/TextureRegistry$SurfaceProducer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
