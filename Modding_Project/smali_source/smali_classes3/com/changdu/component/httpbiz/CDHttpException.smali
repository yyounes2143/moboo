.class public final Lcom/changdu/component/httpbiz/CDHttpException;
.super Ljava/lang/Exception;
.source "Proguard"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0007\u0018\u0000 \u00142\u00060\u0001j\u0002`\u0002:\u0001\u0015B\t\u0008\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\tB\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\n\u0010\u000eB%\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\n\u0010\u0011B\u0019\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\n\u0010\u0012B\u0011\u0008\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\n\u0010\u0013R\"\u0010\u0004\u001a\u00020\u00038\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/changdu/component/httpbiz/CDHttpException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "",
        "errorCode",
        "I",
        "getErrorCode",
        "()I",
        "setErrorCode",
        "(I)V",
        "<init>",
        "()V",
        "",
        "message",
        "(ILjava/lang/String;)V",
        "",
        "cause",
        "(ILjava/lang/String;Ljava/lang/Throwable;)V",
        "(ILjava/lang/Throwable;)V",
        "(Ljava/lang/Throwable;)V",
        "Companion",
        "com/changdu/component/httpbiz/d",
        "http-biz_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final Companion:Lcom/changdu/component/httpbiz/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ERROR_UNKNOWN:I = -0x1


# instance fields
.field private errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/component/httpbiz/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/component/httpbiz/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/component/httpbiz/CDHttpException;->Companion:Lcom/changdu/component/httpbiz/d;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/changdu/component/httpbiz/CDHttpException;->errorCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/changdu/component/httpbiz/CDHttpException;->errorCode:I

    .line 5
    invoke-virtual {p0, p1}, Lcom/changdu/component/httpbiz/CDHttpException;->setErrorCode(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 7
    iput p2, p0, Lcom/changdu/component/httpbiz/CDHttpException;->errorCode:I

    .line 8
    invoke-virtual {p0, p1}, Lcom/changdu/component/httpbiz/CDHttpException;->setErrorCode(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 9
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, -0x1

    .line 10
    iput p2, p0, Lcom/changdu/component/httpbiz/CDHttpException;->errorCode:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/changdu/component/httpbiz/CDHttpException;->setErrorCode(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 12
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, -0x1

    .line 13
    iput p2, p0, Lcom/changdu/component/httpbiz/CDHttpException;->errorCode:I

    .line 14
    invoke-virtual {p0, p1}, Lcom/changdu/component/httpbiz/CDHttpException;->setErrorCode(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/changdu/component/httpbiz/CDHttpException;->errorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/changdu/component/httpbiz/CDHttpException;->errorCode:I

    .line 2
    .line 3
    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/changdu/component/httpbiz/CDHttpException;->errorCode:I

    .line 2
    .line 3
    return-void
.end method
