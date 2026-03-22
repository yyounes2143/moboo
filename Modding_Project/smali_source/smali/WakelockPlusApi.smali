.class public interface abstract LWakelockPlusApi;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LWakelockPlusApi$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "LWakelockPlusApi;",
        "",
        "LToggleMessage;",
        "msg",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(LToggleMessage;)V",
        "LIsEnabledMessage;",
        "isEnabled",
        "()LIsEnabledMessage;",
        "Companion",
        "wakelock_plus_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:LWakelockPlusApi$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, LWakelockPlusApi$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:LWakelockPlusApi$Companion;

    .line 2
    .line 3
    sput-object v0, LWakelockPlusApi;->Companion:LWakelockPlusApi$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LToggleMessage;)V
    .param p1    # LToggleMessage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isEnabled()LIsEnabledMessage;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
