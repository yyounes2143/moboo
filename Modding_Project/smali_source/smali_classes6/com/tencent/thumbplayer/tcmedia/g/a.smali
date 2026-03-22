.class public final Lcom/tencent/thumbplayer/tcmedia/g/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/tencent/thumbplayer/tcmedia/g/a;

.field private static e:Z

.field private static f:Z


# instance fields
.field private b:Lcom/tencent/thumbplayer/tcmedia/g/f/b;

.field private c:Z

.field private d:Z

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/tencent/thumbplayer/tcmedia/g/b;",
            "Lcom/tencent/thumbplayer/tcmedia/g/b/c;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/tencent/thumbplayer/tcmedia/g/e/a;

.field private final i:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

.field private final j:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tencent/thumbplayer/tcmedia/g/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/thumbplayer/tcmedia/g/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tencent/thumbplayer/tcmedia/g/a;->a:Lcom/tencent/thumbplayer/tcmedia/g/a;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/tencent/thumbplayer/tcmedia/g/a;->e:Z

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/tencent/thumbplayer/tcmedia/g/a;->f:Z

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/g/f/b;->e:Lcom/tencent/thumbplayer/tcmedia/g/f/b;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->b:Lcom/tencent/thumbplayer/tcmedia/g/f/b;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->c:Z

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->g:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/g/e/a;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/g/e/a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->h:Lcom/tencent/thumbplayer/tcmedia/g/e/a;

    .line 24
    .line 25
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    .line 26
    .line 27
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    .line 31
    .line 32
    new-instance v1, Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    .line 33
    .line 34
    invoke-direct {v1}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->j:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->k:Z

    .line 40
    .line 41
    return-void
.end method

.method public static a()Lcom/tencent/thumbplayer/tcmedia/g/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/g/a;->a:Lcom/tencent/thumbplayer/tcmedia/g/a;

    return-object v0
.end method

.method private a(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;
    .locals 2

    .line 3
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createDirectCodecWrapper mediaFormat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " createBy:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a()Lcom/tencent/thumbplayer/tcmedia/g/b$b;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " nameOrType:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TCodecManager"

    invoke-static {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a()Lcom/tencent/thumbplayer/tcmedia/g/b$b;

    move-result-object p1

    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/g/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/g/b$b;

    if-ne p1, v0, :cond_1

    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/g/b/d;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b/d;-><init>(Landroid/media/MediaCodec;)V

    return-object p1

    :cond_1
    new-instance p1, Lcom/tencent/thumbplayer/tcmedia/g/b/d;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->l()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/b/d;-><init>(Landroid/media/MediaCodec;)V

    return-object p1
.end method

.method private a(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/tcmedia/g/b;Landroid/view/Surface;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;
    .locals 6

    .line 4
    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->b()Z

    move-result v0

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result v1

    const-string v2, "TCodecManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "getCodec isVideo:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " codecFinalReuseEnable:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p2, Lcom/tencent/thumbplayer/tcmedia/g/b;->a:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p2, Lcom/tencent/thumbplayer/tcmedia/g/b;->a:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2

    iput-boolean v3, p2, Lcom/tencent/thumbplayer/tcmedia/g/b;->b:Z

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCodec return DirectCodecWrapper for mediaFormat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " codecFinalReuseEnable:false surface:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/a;->a(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/g/b/e;->a(Landroid/media/MediaFormat;)Lcom/tencent/thumbplayer/tcmedia/g/b/e;

    move-result-object p3

    invoke-direct {p0, v0, p3}, Lcom/tencent/thumbplayer/tcmedia/g/a;->a(ZLcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;

    move-result-object v1

    iget-object v4, p3, Lcom/tencent/thumbplayer/tcmedia/g/b/e;->a:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/tencent/thumbplayer/tcmedia/g/b/e;->a(Ljava/util/ArrayList;)V

    if-eqz v1, :cond_6

    invoke-interface {v1, p3}, Lcom/tencent/thumbplayer/tcmedia/g/b/c;->b(Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    move-result-object p3

    sget-object v4, Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;->d:Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    const-string v5, " reuseType:"

    if-eq p3, v4, :cond_4

    sget-object v4, Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;->c:Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    if-ne p3, v4, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;->a:Lcom/tencent/thumbplayer/tcmedia/g/f/a$b;

    if-ne p3, v1, :cond_6

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getCodec not reuse, isVideo:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "getCodec reuse, isVideo:"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/g/b/c;->b()V

    invoke-interface {v1}, Lcom/tencent/thumbplayer/tcmedia/g/b/c;->c()V

    const/4 p1, 0x1

    iput-boolean p1, p2, Lcom/tencent/thumbplayer/tcmedia/g/b;->b:Z

    return-object v1

    :cond_6
    :goto_1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    const-string p3, "getCodec not reuse, for can\'t find reUseAble CodecWrapper. isVideo:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iput-boolean v3, p2, Lcom/tencent/thumbplayer/tcmedia/g/b;->b:Z

    invoke-direct {p0, p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/a;->b(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/g/b/c;->b()V

    iget-object p3, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->g:Ljava/util/HashMap;

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method private a(ZLcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;
    .locals 0

    .line 5
    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    :goto_0
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->j:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    goto :goto_0
.end method

.method private b(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;
    .locals 3

    .line 1
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "createNewReuseCodecWrapper mediaFormat:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " createBy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a()Lcom/tencent/thumbplayer/tcmedia/g/b$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nameOrType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCodecManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "mime"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/g/b/e;->a(Landroid/media/MediaFormat;)Lcom/tencent/thumbplayer/tcmedia/g/b/e;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/tencent/thumbplayer/tcmedia/g/f/a;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/e;Landroid/media/MediaFormat;)V

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->a()Lcom/tencent/thumbplayer/tcmedia/g/b$b;

    move-result-object p1

    sget-object v2, Lcom/tencent/thumbplayer/tcmedia/g/b$b;->a:Lcom/tencent/thumbplayer/tcmedia/g/b$b;

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/b;->l()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    :goto_0
    invoke-static {p1, v0, v1}, Lcom/tencent/thumbplayer/tcmedia/g/b/f;->a(Landroid/media/MediaCodec;Ljava/lang/String;Lcom/tencent/thumbplayer/tcmedia/g/b/e;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    goto :goto_0
.end method

.method public static b()V
    .locals 0

    .line 2
    return-void
.end method

.method private c(Lcom/tencent/thumbplayer/tcmedia/g/b/c;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/g/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/g/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    :goto_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;->a(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/g/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->j:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 2
    sget-boolean v0, Lcom/tencent/thumbplayer/tcmedia/g/a;->f:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;ILcom/tencent/thumbplayer/tcmedia/g/b;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;
    .locals 4

    .line 2
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result v0

    const-string v1, ", audioPoolInfo:"

    const-string v2, "TCodecManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "configureStart videoPoolInfo:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->j:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    invoke-virtual {v3}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->d:Z

    iput-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->k:Z

    invoke-direct {p0, p1, p5, p2}, Lcom/tencent/thumbplayer/tcmedia/g/a;->a(Landroid/media/MediaFormat;Lcom/tencent/thumbplayer/tcmedia/g/b;Landroid/view/Surface;)Lcom/tencent/thumbplayer/tcmedia/g/b/c;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/thumbplayer/tcmedia/g/a;->c(Lcom/tencent/thumbplayer/tcmedia/g/b/c;)V

    invoke-virtual {p5}, Lcom/tencent/thumbplayer/tcmedia/g/b;->c()Lcom/tencent/thumbplayer/tcmedia/g/a/a;

    move-result-object p5

    invoke-interface {v0, p5}, Lcom/tencent/thumbplayer/tcmedia/g/b/c;->a(Lcom/tencent/thumbplayer/tcmedia/g/a/a;)V

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/thumbplayer/tcmedia/g/b/c;->a(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "configureEnd   videoPoolInfo:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->j:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    invoke-virtual {p2}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public final a(Lcom/tencent/thumbplayer/tcmedia/g/b/c;)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/g/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/g/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    :goto_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;->b(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/g/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->j:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/tencent/thumbplayer/tcmedia/g/h/a;)V
    .locals 0

    .line 7
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a(Lcom/tencent/thumbplayer/tcmedia/g/h/a;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a(Z)V

    return-void
.end method

.method public final a(Lcom/tencent/thumbplayer/tcmedia/g/b;Landroid/view/Surface;)Z
    .locals 9

    .line 9
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/g/a;->e()Z

    move-result v0

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/g/b;->d()Z

    move-result v1

    invoke-virtual {p1}, Lcom/tencent/thumbplayer/tcmedia/g/b;->b()Z

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/c;->a()Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    invoke-static {}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->a()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reuseEnable getCodec isVideo:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " reuseEnable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v8, "globalReuseEnable:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mediaCodecReuseEnable:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " canUseSetOutputSurfaceAPI:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,surface:"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TCodecManager"

    invoke-static {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/g/h/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    if-nez v5, :cond_2

    if-eqz p2, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public final b(Lcom/tencent/thumbplayer/tcmedia/g/b/c;)V
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/tencent/thumbplayer/tcmedia/g/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/g/b/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->i:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    :goto_0
    check-cast p1, Lcom/tencent/thumbplayer/tcmedia/g/b/f;

    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/g/d/a;->c(Lcom/tencent/thumbplayer/tcmedia/g/b/f;)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/tencent/thumbplayer/tcmedia/g/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->j:Lcom/tencent/thumbplayer/tcmedia/g/d/a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final d()Lcom/tencent/thumbplayer/tcmedia/g/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->b:Lcom/tencent/thumbplayer/tcmedia/g/f/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/thumbplayer/tcmedia/g/a;->k:Z

    .line 2
    .line 3
    return v0
.end method
