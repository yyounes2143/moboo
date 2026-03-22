.class public final Lcom/changdu/component/nativeguard/CDNativeGuard;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\nH\u0007J\u0011\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0083 J\u0018\u0010\u0010\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0007J\u0008\u0010\u0014\u001a\u00020\u000cH\u0007J\u0011\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0087 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/changdu/component/nativeguard/CDNativeGuard;",
        "",
        "()V",
        "TAG",
        "",
        "application",
        "Landroid/app/Application;",
        "mHasInit",
        "",
        "onNativeGuardListener",
        "Lcom/changdu/component/nativeguard/OnNativeGuardListener;",
        "init",
        "",
        "signals",
        "",
        "initNative",
        "notifyNativeCrash",
        "signal",
        "",
        "notifier",
        "onNativeGuardInitError",
        "testNativeCrash",
        "native_guard_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/component/nativeguard/CDNativeGuard;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CDNativeGuard"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static application:Landroid/app/Application;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static mHasInit:Z

.field private static onNativeGuardListener:Lcom/changdu/component/nativeguard/OnNativeGuardListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/nativeguard/CDNativeGuard;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/nativeguard/CDNativeGuard;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/nativeguard/CDNativeGuard;->INSTANCE:Lcom/changdu/component/nativeguard/CDNativeGuard;

    .line 7
    .line 8
    :try_start_0
    const-string v0, "cdnativeguard"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lcom/changdu/component/nativeguard/CDNativeGuard;->mHasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/changdu/component/nativeguard/CDNativeGuard;->mHasInit:Z

    .line 19
    .line 20
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final init([ILandroid/app/Application;Lcom/changdu/component/nativeguard/OnNativeGuardListener;)V
    .locals 1
    .param p0    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/changdu/component/nativeguard/OnNativeGuardListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-boolean v0, Lcom/changdu/component/nativeguard/CDNativeGuard;->mHasInit:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sput-object p1, Lcom/changdu/component/nativeguard/CDNativeGuard;->application:Landroid/app/Application;

    .line 7
    .line 8
    sput-object p2, Lcom/changdu/component/nativeguard/CDNativeGuard;->onNativeGuardListener:Lcom/changdu/component/nativeguard/OnNativeGuardListener;

    .line 9
    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/changdu/component/nativeguard/CDNativeGuard;->initNative([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    const/4 p0, 0x0

    .line 15
    sput-boolean p0, Lcom/changdu/component/nativeguard/CDNativeGuard;->mHasInit:Z

    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private static final native initNative([I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method public static final notifyNativeCrash(II)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    const/4 p1, 0x3

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lcom/changdu/component/nativeguard/CDNativeGuard;->application:Landroid/app/Application;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Lcom/changdu/component/nativeguard/CDNativeGuard;->onNativeGuardListener:Lcom/changdu/component/nativeguard/OnNativeGuardListener;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, p1, p0}, Lcom/changdu/component/nativeguard/OnNativeGuardListener;->onReceiveNativeCrash(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    :cond_1
    :goto_0
    return-void
.end method

.method public static final onNativeGuardInitError()V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    new-instance v0, Lcom/changdu/component/nativeguard/CDNativeGuardException;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/nativeguard/CDNativeGuardException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public static final native testNativeCrash(I)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method
