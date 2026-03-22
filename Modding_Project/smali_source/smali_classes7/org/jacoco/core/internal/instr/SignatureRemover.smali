.class public Lorg/jacoco/core/internal/instr/SignatureRemover;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "META-INF/[^/]*\\.SF|META-INF/[^/]*\\.DSA|META-INF/[^/]*\\.RSA|META-INF/SIG-[^/]*"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lorg/jacoco/core/internal/instr/SignatureRemover;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/jacoco/core/internal/instr/SignatureRemover;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    return-void
.end method
