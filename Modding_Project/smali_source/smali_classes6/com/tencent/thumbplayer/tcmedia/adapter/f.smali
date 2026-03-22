.class public Lcom/tencent/thumbplayer/tcmedia/adapter/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

.field private b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

.field private c:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

.field private d:Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;

.field private e:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->f:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "setOnPreparedListener"

    .line 9
    .line 10
    const-class v2, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$i;

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "setOnInfoListener"

    .line 16
    .line 17
    const-class v2, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v1, "setOnErrorListener"

    .line 23
    .line 24
    const-class v2, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v1, "setOnSeekCompleteListener"

    .line 30
    .line 31
    const-class v2, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/d;Lcom/tencent/thumbplayer/tcmedia/tplayer/a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 5
    .line 6
    const-string v1, "TPPlayerAdapterProxy"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/g;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    .line 12
    .line 13
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, p0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/f;Lcom/tencent/thumbplayer/tcmedia/adapter/f$1;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$g;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static synthetic a(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    return-object p0
.end method

.method private static a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2

    .line 3
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    const-string v0, "int"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "long"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 2

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "release"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "setPlaySpeedRatio"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "selectTrack"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "start"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "reset"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "pause"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "stop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "seekTo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "prepareAsync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->f([Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->h([Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->i([Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b([Ljava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->e([Ljava/lang/Object;)V

    return-void

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c([Ljava/lang/Object;)V

    return-void

    :pswitch_6
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->d([Ljava/lang/Object;)V

    return-void

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->g([Ljava/lang/Object;)V

    return-void

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a([Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a89ee4b -> :sswitch_8
        -0x3603e4ed -> :sswitch_7
        0x360802 -> :sswitch_6
        0x65825f6 -> :sswitch_5
        0x6761d4f -> :sswitch_4
        0x68ac462 -> :sswitch_3
        0xc3b89af -> :sswitch_2
        0xd079f5a -> :sswitch_1
        0x41012807 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a([Ljava/lang/Object;)V
    .locals 0

    .line 5
    return-void
.end method

.method public static synthetic b(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/tplayer/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    return-object p0
.end method

.method private b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 5

    .line 2
    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->f:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    new-array v2, v0, [Ljava/lang/Class;

    aput-object p1, v2, v1

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    aget-object v3, p2, v1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/f$a;

    aput-object p1, p2, v1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private b([Ljava/lang/Object;)V
    .locals 1

    .line 3
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$m;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$m;-><init>()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/thumbplayer/tcmedia/adapter/f;)Lcom/tencent/thumbplayer/tcmedia/adapter/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/g;

    return-object p0
.end method

.method private c([Ljava/lang/Object;)V
    .locals 1

    .line 2
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$j;

    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$j;-><init>()V

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    return-void
.end method

.method private d([Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$n;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$n;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->v()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$n;->a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c(Z)Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$n;->a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private e([Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$l;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$l;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->v()Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$l;->a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPGeneralPlayFlowParams;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->c(Z)Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;-><init>()V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$l;->a(Lcom/tencent/thumbplayer/tcmedia/core/player/TPDynamicStatisticParams;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private f([Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$k;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$k;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private g([Ljava/lang/Object;)V
    .locals 1

    .line 1
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/d/b$r;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$r;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private h([Ljava/lang/Object;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$v;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$v;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object p1, p1, v1

    .line 8
    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$v;->a(F)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private i([Ljava/lang/Object;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/d/b$t;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/d/b$t;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    aget-object v2, p1, v1

    .line 8
    .line 9
    check-cast v2, Ljava/lang/Integer;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-virtual {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/d/b$t;->b(I)V

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    aget-object v2, p1, v2

    .line 20
    .line 21
    check-cast v2, Ljava/lang/Long;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    invoke-virtual {v0, v2, v3}, Lcom/tencent/thumbplayer/tcmedia/d/b$t;->a(J)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/d;->s()[Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    aget-object p1, p1, v1

    .line 37
    .line 38
    check-cast p1, Ljava/lang/Integer;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    aget-object p1, v2, p1

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/d/b$t;->a(Lcom/tencent/thumbplayer/tcmedia/api/TPTrackInfo;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b:Lcom/tencent/thumbplayer/tcmedia/tplayer/a;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/tplayer/a;->b()Lcom/tencent/thumbplayer/tcmedia/d/c;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/d/c;->a(Lcom/tencent/thumbplayer/tcmedia/d/b$a;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 2

    .line 2
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->e:Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->e:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-string p1, " has excecption: "

    .line 2
    .line 3
    const-string v0, "invokeMethod "

    .line 4
    .line 5
    const-string v1, "TPPlayerAdapterProxy"

    .line 6
    .line 7
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p2, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/d;

    .line 14
    .line 15
    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    return-object p1

    .line 20
    :catchall_0
    move-exception p3

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p3

    .line 23
    goto :goto_2

    .line 24
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/utils/TPLogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/f;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1

    .line 58
    :goto_2
    invoke-virtual {p3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    invoke-virtual {p3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    throw p1
.end method
