.class public final Lcom/changdu/component/memguard/CDMemGuard;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0005\u001a\u00020\u0006J\t\u0010\u0007\u001a\u00020\u0006H\u0082 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/changdu/component/memguard/CDMemGuard;",
        "",
        "()V",
        "hasInit",
        "",
        "init",
        "",
        "startMemGuard",
        "memorySponge_release"
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
.field public static final INSTANCE:Lcom/changdu/component/memguard/CDMemGuard;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static hasInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/changdu/component/memguard/CDMemGuard;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/memguard/CDMemGuard;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/memguard/CDMemGuard;->INSTANCE:Lcom/changdu/component/memguard/CDMemGuard;

    .line 7
    .line 8
    new-instance v0, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lcom/bytedance/shadowhook/ShadowHook$Mode;->UNIQUE:Lcom/bytedance/shadowhook/ShadowHook$Mode;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bytedance/shadowhook/ShadowHook$Mode;)Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/shadowhook/ShadowHook$ConfigBuilder;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/bytedance/shadowhook/ShadowHook$Config;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/bytedance/shadowhook/ShadowHook;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/bytedance/shadowhook/ShadowHook$Config;)I

    .line 24
    .line 25
    .line 26
    :try_start_0
    const-string v0, "cdmemguard"

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/changdu/component/memguard/CDMemGuard;->hasInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/changdu/component/memguard/CDMemGuard;->hasInit:Z

    .line 37
    .line 38
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

.method private final native startMemGuard()V
.end method


# virtual methods
.method public final init()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/changdu/component/memguard/CDMemGuard;->hasInit:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-direct {p0}, Lcom/changdu/component/memguard/CDMemGuard;->startMemGuard()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    :catchall_0
    :cond_0
    return-void
.end method
