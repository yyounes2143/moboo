.class public Lcom/tencent/thumbplayer/tcmedia/utils/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/utils/q$a;,
        Lcom/tencent/thumbplayer/tcmedia/utils/q$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/tencent/thumbplayer/tcmedia/utils/q$a;

.field private c:Landroid/os/Looper;

.field private d:Lcom/tencent/thumbplayer/tcmedia/utils/m;

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->c:Landroid/os/Looper;

    .line 7
    .line 8
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/utils/m;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->d:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    .line 14
    .line 15
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/utils/q$a;

    .line 16
    .line 17
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->c:Landroid/os/Looper;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-direct {p1, p0, p2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/q$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/utils/q;Landroid/os/Looper;Lcom/tencent/thumbplayer/tcmedia/utils/q$1;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->b:Lcom/tencent/thumbplayer/tcmedia/utils/q$a;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->e:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/n;->a(Ljava/lang/Class;I)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    .line 42
    .line 43
    new-instance p2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string p3, "Register "

    .line 46
    .line 47
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    .line 51
    .line 52
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p3, " @ThreadSwitch method failed, version: 2.32.0.525"

    .line 60
    .line 61
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    .line 72
    .line 73
    const-string p2, "register @ThreadSwitch method failed, player can not work"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1
.end method

.method private a(IIILjava/lang/Object;ZZJ)Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/utils/e;

    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/utils/e;-><init>()V

    new-instance v5, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;

    const/4 v1, 0x0

    invoke-direct {v5, v1}, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;-><init>(Lcom/tencent/thumbplayer/tcmedia/utils/q$1;)V

    iput-object p4, v5, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;->a:Ljava/lang/Object;

    iput-object v0, v5, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;->b:Lcom/tencent/thumbplayer/tcmedia/utils/e;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->b(IIILjava/lang/Object;ZZJ)Z

    const-wide/16 p1, 0x1f4

    invoke-virtual {v0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(J)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    invoke-direct {p0, p3}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/tencent/thumbplayer/tcmedia/utils/n;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "boolean"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_1
    const-string p2, "int"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p2, "long"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p2, "float"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/n;->b(Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not find"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/Object;)V
    .locals 6

    .line 5
    const-string v0, " has excecption: "

    const-string v1, "invokeMethod "

    instance-of v2, p2, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;

    iget-object v2, v2, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;->b:Lcom/tencent/thumbplayer/tcmedia/utils/e;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iget-object v4, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    invoke-static {v4, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/n;->f(Ljava/lang/Class;I)Ljava/lang/reflect/Method;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    const-string v0, "invokeMethod, handle method name is empty, msg:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "invokeMethod, handle method name is empty"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->e:Ljava/lang/Object;

    invoke-virtual {v4, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->e:Ljava/lang/Object;

    invoke-virtual {v4, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_2
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_4

    :cond_3
    :goto_4
    return-void

    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/IllegalArgumentException;

    if-eqz p2, :cond_5

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, params invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/IllegalStateException;

    if-eqz p2, :cond_6

    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed, state invalid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v2, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/e;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    const-string v0, "handle listener is null, return"

    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/utils/q;Landroid/os/Message;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(Landroid/os/Message;)V

    return-void
.end method

.method private a()Z
    .locals 2

    .line 8
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->c:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private a(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 9
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;

    iget-object p1, p1, Lcom/tencent/thumbplayer/tcmedia/utils/q$b;->a:Ljava/lang/Object;

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    check-cast p1, [Ljava/lang/Object;

    return-object p1

    :cond_2
    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method private b(IIILjava/lang/Object;ZZJ)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->b:Lcom/tencent/thumbplayer/tcmedia/utils/q$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , send failed , handler null"

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz p5, :cond_1

    if-nez p4, :cond_1

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", send failed , params null"

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->c:Landroid/os/Looper;

    invoke-virtual {p5}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Thread;->isAlive()Z

    move-result p5

    if-nez p5, :cond_2

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", send failed , thread had dead"

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a()Z

    move-result p5

    if-nez p5, :cond_3

    iget-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->d:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    invoke-virtual {p5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p5

    invoke-virtual {p5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :cond_3
    if-eqz p6, :cond_4

    iget-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->b:Lcom/tencent/thumbplayer/tcmedia/utils/q$a;

    invoke-virtual {p5, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object p5, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->b:Lcom/tencent/thumbplayer/tcmedia/utils/q$a;

    invoke-virtual {p5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p5

    iput p1, p5, Landroid/os/Message;->what:I

    iput p2, p5, Landroid/os/Message;->arg1:I

    iput p3, p5, Landroid/os/Message;->arg2:I

    iput-object p4, p5, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p5}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(Landroid/os/Message;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->b:Lcom/tencent/thumbplayer/tcmedia/utils/q$a;

    invoke-virtual {p1, p5, p7, p8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->d:Lcom/tencent/thumbplayer/tcmedia/utils/m;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    invoke-static {v1, p1, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/n;->b(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/n;->d(Ljava/lang/Class;I)Z

    move-result v8

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/n;->e(Ljava/lang/Class;I)Z

    move-result v7

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/utils/q;->f:Ljava/lang/Class;

    invoke-static {p1, v3}, Lcom/tencent/thumbplayer/tcmedia/utils/n;->c(Ljava/lang/Class;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v2 .. v10}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a(IIILjava/lang/Object;ZZJ)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    move-object v6, p2

    const/4 v5, 0x0

    const-wide/16 v9, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/tencent/thumbplayer/tcmedia/utils/q;->b(IIILjava/lang/Object;ZZJ)Z

    const/4 p1, 0x0

    return-object p1

    :cond_1
    move-object v2, p0

    iget-object p2, v2, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dealThreadSwitch failed , not match method:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    move-object v2, p0

    iget-object p1, v2, Lcom/tencent/thumbplayer/tcmedia/utils/q;->a:Ljava/lang/String;

    const-string p2, "dealThreadSwitch failed , methodName is null"

    invoke-static {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
