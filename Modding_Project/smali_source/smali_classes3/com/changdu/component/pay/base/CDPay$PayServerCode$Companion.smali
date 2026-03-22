.class public final Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/changdu/component/pay/base/CDPay$PayServerCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;",
        "",
        "()V",
        "ALIPAY",
        "",
        "GOOGLE",
        "HUAWEI",
        "MI_GLOBAL",
        "THIRD_H5",
        "WECHAT",
        "pay-base_release"
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
.field static final synthetic $$INSTANCE:Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;

.field public static final ALIPAY:I = 0x3

.field public static final GOOGLE:I = 0xc

.field public static final HUAWEI:I = 0x18

.field public static final MI_GLOBAL:I = 0x23

.field public static final THIRD_H5:I = 0xf

.field public static final WECHAT:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;->$$INSTANCE:Lcom/changdu/component/pay/base/CDPay$PayServerCode$Companion;

    .line 7
    .line 8
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
