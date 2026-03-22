.class public final Lcom/changdu/mobovideo/localpush/LocalPushStateStore;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/changdu/mobovideo/localpush/LocalPushStateStore$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J#\u0010\n\u001a\u00020\t2\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J-\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00112\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0015\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u001bJ\u0015\u0010 \u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016\u00a2\u0006\u0004\u0008 \u0010\u001eJ\r\u0010!\u001a\u00020\u0016\u00a2\u0006\u0004\u0008!\u0010\u001bJ\u0015\u0010\"\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\"\u0010\u001eJ\r\u0010#\u001a\u00020\u0016\u00a2\u0006\u0004\u0008#\u0010\u001bJ\u0015\u0010$\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016\u00a2\u0006\u0004\u0008$\u0010\u001eJ\r\u0010%\u001a\u00020\u0016\u00a2\u0006\u0004\u0008%\u0010\u001bJ\u0015\u0010&\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016\u00a2\u0006\u0004\u0008&\u0010\u001eJ\r\u0010\'\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\'\u0010\u001bJ\u0015\u0010(\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016\u00a2\u0006\u0004\u0008(\u0010\u001eJ\r\u0010)\u001a\u00020\u0016\u00a2\u0006\u0004\u0008)\u0010\u001bJ\u0015\u0010*\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u0016\u00a2\u0006\u0004\u0008*\u0010\u001eJ\u0015\u0010.\u001a\u00020-2\u0006\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008.\u0010/J\u001d\u00101\u001a\u00020\t2\u0006\u0010,\u001a\u00020+2\u0006\u00100\u001a\u00020-\u00a2\u0006\u0004\u00081\u00102J\u001f\u00105\u001a\u00020\t2\u0006\u00103\u001a\u00020\u00162\u0008\u0008\u0002\u00104\u001a\u00020\u0016\u00a2\u0006\u0004\u00085\u00106J\u001d\u00107\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00112\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u00087\u00108\u00a8\u00069"
    }
    d2 = {
        "Lcom/changdu/mobovideo/localpush/LocalPushStateStore;",
        "",
        "<init>",
        "()V",
        "Lcom/changdu/mobovideo/localpush/LocalPushState;",
        "Wwwwwwwwww",
        "()Lcom/changdu/mobovideo/localpush/LocalPushState;",
        "Lkotlin/Function1;",
        "transform",
        "",
        "Kkkkkkkkkkkkkk",
        "(Lkotlin/jvm/functions/Function1;)V",
        "state",
        "Kkkkkkkkkkkkk",
        "(Lcom/changdu/mobovideo/localpush/LocalPushState;)V",
        "Lorg/json/JSONArray;",
        "array",
        "",
        "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
        "Wwwwwwwwwwwwww",
        "(Lorg/json/JSONArray;)Ljava/util/List;",
        "records",
        "",
        "nowMs",
        "Wwwwwwwwwwwww",
        "(Ljava/util/List;J)Ljava/util/List;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "()J",
        "value",
        "Wwww",
        "(J)V",
        "Wwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkkkkkkkk",
        "Wwwwwwwwwwwwwwwwwwww",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "Lcom/changdu/mobovideo/localpush/LocalPushType;",
        "type",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;)I",
        "index",
        "Wwwwww",
        "(Lcom/changdu/mobovideo/localpush/LocalPushType;I)V",
        "seriesId",
        "pushedAtMs",
        "Wwwwwwwww",
        "(JJ)V",
        "Wwwwwwwwwwwwwwww",
        "(J)Ljava/util/List;",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLocalPushStateStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalPushStateStore.kt\ncom/changdu/mobovideo/localpush/LocalPushStateStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,197:1\n1563#2:198\n1634#2,3:199\n1869#2,2:202\n1068#2:204\n1999#2,14:229\n1068#2:246\n827#2:247\n855#2,2:248\n1068#2:250\n996#3:205\n1025#3,3:206\n1028#3,3:216\n382#4,7:209\n136#5,9:219\n216#5:228\n217#5:244\n145#5:245\n1#6:243\n*S KotlinDebug\n*F\n+ 1 LocalPushStateStore.kt\ncom/changdu/mobovideo/localpush/LocalPushStateStore\n*L\n109#1:198\n109#1:199,3\n157#1:202,2\n188#1:204\n193#1:229,14\n194#1:246\n94#1:247\n94#1:248,2\n99#1:250\n192#1:205\n192#1:206,3\n192#1:216,3\n192#1:209,7\n193#1:219,9\n193#1:228\n193#1:244\n193#1:245\n193#1:243\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Kkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 22

    .line 1
    const/16 v20, 0x7fd

    .line 2
    .line 3
    const/16 v21, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    const-wide/16 v8, 0x0

    .line 10
    .line 11
    const-wide/16 v10, 0x0

    .line 12
    .line 13
    const-wide/16 v12, 0x0

    .line 14
    .line 15
    const-wide/16 v14, 0x0

    .line 16
    .line 17
    const/16 v16, 0x0

    .line 18
    .line 19
    const/16 v17, 0x0

    .line 20
    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    move-wide/from16 v4, p0

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static final Kkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 22

    .line 1
    const/16 v20, 0x7fb

    .line 2
    .line 3
    const/16 v21, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const-wide/16 v8, 0x0

    .line 10
    .line 11
    const-wide/16 v10, 0x0

    .line 12
    .line 13
    const-wide/16 v12, 0x0

    .line 14
    .line 15
    const-wide/16 v14, 0x0

    .line 16
    .line 17
    const/16 v16, 0x0

    .line 18
    .line 19
    const/16 v17, 0x0

    .line 20
    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    move-wide/from16 v6, p0

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static final Kkkkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 22

    .line 1
    const/16 v20, 0x7f7

    .line 2
    .line 3
    const/16 v21, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const-wide/16 v6, 0x0

    .line 10
    .line 11
    const-wide/16 v10, 0x0

    .line 12
    .line 13
    const-wide/16 v12, 0x0

    .line 14
    .line 15
    const-wide/16 v14, 0x0

    .line 16
    .line 17
    const/16 v16, 0x0

    .line 18
    .line 19
    const/16 v17, 0x0

    .line 20
    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    move-wide/from16 v8, p0

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 22

    .line 1
    const/16 v20, 0x7bf

    .line 2
    .line 3
    const/16 v21, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const-wide/16 v6, 0x0

    .line 10
    .line 11
    const-wide/16 v8, 0x0

    .line 12
    .line 13
    const-wide/16 v10, 0x0

    .line 14
    .line 15
    const-wide/16 v12, 0x0

    .line 16
    .line 17
    const/16 v16, 0x0

    .line 18
    .line 19
    const/16 v17, 0x0

    .line 20
    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    move-wide/from16 v14, p0

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 22

    .line 1
    const/16 v20, 0x7ef

    .line 2
    .line 3
    const/16 v21, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const-wide/16 v6, 0x0

    .line 10
    .line 11
    const-wide/16 v8, 0x0

    .line 12
    .line 13
    const-wide/16 v12, 0x0

    .line 14
    .line 15
    const-wide/16 v14, 0x0

    .line 16
    .line 17
    const/16 v16, 0x0

    .line 18
    .line 19
    const/16 v17, 0x0

    .line 20
    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    move-wide/from16 v10, p0

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static final Kkkkkkkkkkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 22

    .line 1
    const/16 v20, 0x7df

    .line 2
    .line 3
    const/16 v21, 0x0

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const-wide/16 v6, 0x0

    .line 10
    .line 11
    const-wide/16 v8, 0x0

    .line 12
    .line 13
    const-wide/16 v10, 0x0

    .line 14
    .line 15
    const-wide/16 v14, 0x0

    .line 16
    .line 17
    const/16 v16, 0x0

    .line 18
    .line 19
    const/16 v17, 0x0

    .line 20
    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    move-wide/from16 v12, p0

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static final Www(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 22

    .line 1
    const/16 v20, 0x7fe

    .line 2
    .line 3
    const/16 v21, 0x0

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    const-wide/16 v6, 0x0

    .line 8
    .line 9
    const-wide/16 v8, 0x0

    .line 10
    .line 11
    const-wide/16 v10, 0x0

    .line 12
    .line 13
    const-wide/16 v12, 0x0

    .line 14
    .line 15
    const-wide/16 v14, 0x0

    .line 16
    .line 17
    const/16 v16, 0x0

    .line 18
    .line 19
    const/16 v17, 0x0

    .line 20
    .line 21
    const/16 v18, 0x0

    .line 22
    .line 23
    const/16 v19, 0x0

    .line 24
    .line 25
    move-wide/from16 v2, p0

    .line 26
    .line 27
    move-object/from16 v1, p2

    .line 28
    .line 29
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public static final Wwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;ILcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 23

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushStateStore$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_2

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    const/16 v21, 0x5ff

    .line 19
    .line 20
    const/16 v22, 0x0

    .line 21
    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    const-wide/16 v7, 0x0

    .line 27
    .line 28
    const-wide/16 v9, 0x0

    .line 29
    .line 30
    const-wide/16 v11, 0x0

    .line 31
    .line 32
    const-wide/16 v13, 0x0

    .line 33
    .line 34
    const-wide/16 v15, 0x0

    .line 35
    .line 36
    const/16 v17, 0x0

    .line 37
    .line 38
    const/16 v18, 0x0

    .line 39
    .line 40
    const/16 v20, 0x0

    .line 41
    .line 42
    move/from16 v19, p1

    .line 43
    .line 44
    move-object/from16 v2, p2

    .line 45
    .line 46
    invoke-static/range {v2 .. v22}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 52
    .line 53
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 54
    .line 55
    .line 56
    throw v0

    .line 57
    :cond_1
    const/16 v20, 0x6ff

    .line 58
    .line 59
    const/16 v21, 0x0

    .line 60
    .line 61
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    const-wide/16 v4, 0x0

    .line 64
    .line 65
    const-wide/16 v6, 0x0

    .line 66
    .line 67
    const-wide/16 v8, 0x0

    .line 68
    .line 69
    const-wide/16 v10, 0x0

    .line 70
    .line 71
    const-wide/16 v12, 0x0

    .line 72
    .line 73
    const-wide/16 v14, 0x0

    .line 74
    .line 75
    const/16 v16, 0x0

    .line 76
    .line 77
    const/16 v18, 0x0

    .line 78
    .line 79
    const/16 v19, 0x0

    .line 80
    .line 81
    move/from16 v17, p1

    .line 82
    .line 83
    move-object/from16 v1, p2

    .line 84
    .line 85
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0

    .line 90
    :cond_2
    const/16 v20, 0x77f

    .line 91
    .line 92
    const/16 v21, 0x0

    .line 93
    .line 94
    const-wide/16 v2, 0x0

    .line 95
    .line 96
    const-wide/16 v4, 0x0

    .line 97
    .line 98
    const-wide/16 v6, 0x0

    .line 99
    .line 100
    const-wide/16 v8, 0x0

    .line 101
    .line 102
    const-wide/16 v10, 0x0

    .line 103
    .line 104
    const-wide/16 v12, 0x0

    .line 105
    .line 106
    const-wide/16 v14, 0x0

    .line 107
    .line 108
    const/16 v17, 0x0

    .line 109
    .line 110
    const/16 v18, 0x0

    .line 111
    .line 112
    const/16 v19, 0x0

    .line 113
    .line 114
    move/from16 v16, p1

    .line 115
    .line 116
    move-object/from16 v1, p2

    .line 117
    .line 118
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    return-object v0
.end method

.method public static final Wwwwwww(JJLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 23

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    sget-object v4, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 6
    .line 7
    invoke-virtual/range {p4 .. p4}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v5

    .line 11
    invoke-virtual {v4, v5, v0, v1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwww(Ljava/util/List;J)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Ljava/lang/Iterable;

    .line 16
    .line 17
    new-instance v5, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eqz v6, :cond_1

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    move-object v7, v6

    .line 37
    check-cast v7, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 38
    .line 39
    invoke-virtual {v7}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 40
    .line 41
    .line 42
    move-result-wide v7

    .line 43
    cmp-long v7, v7, v2

    .line 44
    .line 45
    if-nez v7, :cond_0

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    new-instance v4, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 53
    .line 54
    invoke-direct {v4, v2, v3, v0, v1}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;-><init>(JJ)V

    .line 55
    .line 56
    .line 57
    invoke-static {v5, v4}, Lkotlin/collections/CollectionsKt;->plus(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Iterable;

    .line 62
    .line 63
    new-instance v1, Lcom/changdu/mobovideo/localpush/LocalPushStateStore$recordPromotionSeriesId$lambda$10$$inlined$sortedByDescending$1;

    .line 64
    .line 65
    invoke-direct {v1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore$recordPromotionSeriesId$lambda$10$$inlined$sortedByDescending$1;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v20

    .line 72
    const/16 v21, 0x3ff

    .line 73
    .line 74
    const/16 v22, 0x0

    .line 75
    .line 76
    const-wide/16 v3, 0x0

    .line 77
    .line 78
    const-wide/16 v5, 0x0

    .line 79
    .line 80
    const-wide/16 v7, 0x0

    .line 81
    .line 82
    const-wide/16 v9, 0x0

    .line 83
    .line 84
    const-wide/16 v11, 0x0

    .line 85
    .line 86
    const-wide/16 v13, 0x0

    .line 87
    .line 88
    const-wide/16 v15, 0x0

    .line 89
    .line 90
    const/16 v17, 0x0

    .line 91
    .line 92
    const/16 v18, 0x0

    .line 93
    .line 94
    const/16 v19, 0x0

    .line 95
    .line 96
    move-object/from16 v2, p4

    .line 97
    .line 98
    invoke-static/range {v2 .. v22}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0
.end method

.method public static synthetic Wwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushStateStore;JJILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p3

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwww(JJ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static final Wwwwwwwwwww(JJLcom/changdu/mobovideo/localpush/PromotionSeriesRecord;)Z
    .locals 4

    .line 1
    invoke-virtual {p4}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p4}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long p0, p0, v0

    .line 16
    .line 17
    if-gtz p0, :cond_0

    .line 18
    .line 19
    cmp-long p0, v0, p2

    .line 20
    .line 21
    if-gtz p0, :cond_0

    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    return p0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    return p0
.end method

.method public static synthetic Wwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushStateStore;Ljava/util/List;JILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p2

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwww(Ljava/util/List;J)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushStateStore;JILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwwwww(J)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;ILcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;ILcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(JJLcom/changdu/mobovideo/localpush/PromotionSeriesRecord;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwww(JJLcom/changdu/mobovideo/localpush/PromotionSeriesRecord;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Www(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwww(JJLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkkkkkkkkkkkkk(JLcom/changdu/mobovideo/localpush/LocalPushState;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final Kkkkkkkkkkkkk(Lcom/changdu/mobovideo/localpush/LocalPushState;)V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "lastActualPushAtMs"

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 13
    .line 14
    .line 15
    const-string v1, "queueTailAtMs"

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    const-string v1, "nextSignInCandidateAtMs"

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v1, "lastSignInPushAtMs"

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string v1, "lastRecallPushAtMs"

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 45
    .line 46
    .line 47
    move-result-wide v2

    .line 48
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v1, "lastPromotionPushAtMs"

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v1, "lastRecallTriggerAtMs"

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string v1, "signInContentIndex"

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwww()I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    const-string v1, "recallContentIndex"

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v1, "promotionContentIndex"

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    const-string v1, "recentPromotionSeries"

    .line 97
    .line 98
    new-instance v2, Lorg/json/JSONArray;

    .line 99
    .line 100
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 101
    .line 102
    .line 103
    sget-object v3, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStateStore;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    const/4 v7, 0x2

    .line 110
    const/4 v8, 0x0

    .line 111
    const-wide/16 v5, 0x0

    .line 112
    .line 113
    invoke-static/range {v3 .. v8}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushStateStore;Ljava/util/List;JILjava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/Iterable;

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-eqz v3, :cond_0

    .line 128
    .line 129
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    check-cast v3, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 134
    .line 135
    new-instance v4, Lorg/json/JSONObject;

    .line 136
    .line 137
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v5, "seriesId"

    .line 141
    .line 142
    invoke-virtual {v3}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 143
    .line 144
    .line 145
    move-result-wide v6

    .line 146
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 147
    .line 148
    .line 149
    const-string v5, "pushedAtMs"

    .line 150
    .line 151
    invoke-virtual {v3}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 152
    .line 153
    .line 154
    move-result-wide v6

    .line 155
    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 163
    .line 164
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    sget-object p1, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStorage;

    .line 168
    .line 169
    const-string v1, "local_push_state_all_json"

    .line 170
    .line 171
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {p1, v1, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .line 177
    .line 178
    :catchall_0
    return-void
.end method

.method public final Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/changdu/mobovideo/localpush/LocalPushState;",
            "Lcom/changdu/mobovideo/localpush/LocalPushState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkk(Lcom/changdu/mobovideo/localpush/LocalPushState;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkk(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkk(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkk(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkk(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkk(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkkkkk(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Wwww(J)V
    .locals 1

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(J)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Wwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;I)V
    .locals 1
    .param p1    # Lcom/changdu/mobovideo/localpush/LocalPushType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwww;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lcom/changdu/mobovideo/localpush/LocalPushType;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Wwwwwwwww(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-lez v2, :cond_1

    .line 6
    .line 7
    cmp-long v0, p3, v0

    .line 8
    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwww;

    .line 13
    .line 14
    invoke-direct {v0, p3, p4, p1, p2}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwww;-><init>(JJ)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkkk(Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method public final Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;
    .locals 28

    .line 1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStorage;

    .line 2
    .line 3
    const-string v1, "local_push_state_all_json"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    :cond_0
    move-object/from16 v2, p0

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 28
    .line 29
    const-string v0, "lastActualPushAtMs"

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    const-string v0, "queueTailAtMs"

    .line 38
    .line 39
    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v9

    .line 43
    const-string v0, "nextSignInCandidateAtMs"

    .line 44
    .line 45
    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v11

    .line 49
    const-string v0, "lastSignInPushAtMs"

    .line 50
    .line 51
    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 52
    .line 53
    .line 54
    move-result-wide v13

    .line 55
    const-string v0, "lastRecallPushAtMs"

    .line 56
    .line 57
    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 58
    .line 59
    .line 60
    move-result-wide v15

    .line 61
    const-string v0, "lastPromotionPushAtMs"

    .line 62
    .line 63
    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 64
    .line 65
    .line 66
    move-result-wide v17

    .line 67
    const-string v0, "lastRecallTriggerAtMs"

    .line 68
    .line 69
    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    const-string v0, "signInContentIndex"

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 77
    .line 78
    .line 79
    move-result v19

    .line 80
    const-string v0, "recallContentIndex"

    .line 81
    .line 82
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v20

    .line 86
    const-string v0, "promotionContentIndex"

    .line 87
    .line 88
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result v21

    .line 92
    const-string v0, "recentPromotionSeries"

    .line 93
    .line 94
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 95
    .line 96
    .line 97
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    move-object/from16 v2, p0

    .line 99
    .line 100
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwwww(Lorg/json/JSONArray;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v22

    .line 104
    move-wide/from16 v26, v17

    .line 105
    .line 106
    move-wide/from16 v17, v5

    .line 107
    .line 108
    move-wide v5, v7

    .line 109
    move-wide v7, v9

    .line 110
    move-wide v9, v11

    .line 111
    move-wide v11, v13

    .line 112
    move-wide v13, v15

    .line 113
    move-wide/from16 v15, v26

    .line 114
    .line 115
    invoke-direct/range {v4 .. v22}, Lcom/changdu/mobovideo/localpush/LocalPushState;-><init>(JJJJJJJIIILjava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    .line 117
    .line 118
    return-object v4

    .line 119
    :catchall_0
    move-object/from16 v2, p0

    .line 120
    .line 121
    :catchall_1
    sget-object v0, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->INSTANCE:Lcom/changdu/mobovideo/localpush/LocalPushStorage;

    .line 122
    .line 123
    const/4 v3, 0x0

    .line 124
    invoke-virtual {v0, v1, v3}, Lcom/changdu/mobovideo/localpush/LocalPushStorage;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    new-instance v4, Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 128
    .line 129
    const/16 v23, 0x7ff

    .line 130
    .line 131
    const/16 v24, 0x0

    .line 132
    .line 133
    const-wide/16 v5, 0x0

    .line 134
    .line 135
    const-wide/16 v7, 0x0

    .line 136
    .line 137
    const-wide/16 v9, 0x0

    .line 138
    .line 139
    const-wide/16 v11, 0x0

    .line 140
    .line 141
    const-wide/16 v13, 0x0

    .line 142
    .line 143
    const-wide/16 v15, 0x0

    .line 144
    .line 145
    const-wide/16 v17, 0x0

    .line 146
    .line 147
    const/16 v19, 0x0

    .line 148
    .line 149
    const/16 v20, 0x0

    .line 150
    .line 151
    const/16 v21, 0x0

    .line 152
    .line 153
    const/16 v22, 0x0

    .line 154
    .line 155
    invoke-direct/range {v4 .. v24}, Lcom/changdu/mobovideo/localpush/LocalPushState;-><init>(JJJJJJJIIILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 156
    .line 157
    .line 158
    return-object v4

    .line 159
    :goto_0
    new-instance v5, Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 160
    .line 161
    const/16 v24, 0x7ff

    .line 162
    .line 163
    const/16 v25, 0x0

    .line 164
    .line 165
    const-wide/16 v6, 0x0

    .line 166
    .line 167
    const-wide/16 v8, 0x0

    .line 168
    .line 169
    const-wide/16 v10, 0x0

    .line 170
    .line 171
    const-wide/16 v12, 0x0

    .line 172
    .line 173
    const-wide/16 v14, 0x0

    .line 174
    .line 175
    const-wide/16 v16, 0x0

    .line 176
    .line 177
    const-wide/16 v18, 0x0

    .line 178
    .line 179
    const/16 v20, 0x0

    .line 180
    .line 181
    const/16 v21, 0x0

    .line 182
    .line 183
    const/16 v22, 0x0

    .line 184
    .line 185
    const/16 v23, 0x0

    .line 186
    .line 187
    invoke-direct/range {v5 .. v25}, Lcom/changdu/mobovideo/localpush/LocalPushState;-><init>(JJJJJJJIIILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    .line 189
    .line 190
    return-object v5
.end method

.method public final Wwwwwwwwwwwww(Ljava/util/List;J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
            ">;J)",
            "Ljava/util/List<",
            "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    cmp-long v0, p2, v0

    .line 15
    .line 16
    if-gtz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    new-instance p2, Lcom/changdu/mobovideo/localpush/LocalPushStateStore$pruneRecentPromotionSeries$$inlined$sortedByDescending$1;

    .line 21
    .line 22
    invoke-direct {p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore$pruneRecentPromotionSeries$$inlined$sortedByDescending$1;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_1
    const-wide/32 v0, 0xa4cb800

    .line 31
    .line 32
    .line 33
    sub-long v0, p2, v0

    .line 34
    .line 35
    check-cast p1, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    new-instance v2, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 42
    .line 43
    invoke-direct {v2, v0, v1, p2, p3}, Lcom/changdu/mobovideo/localpush/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(JJ)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 51
    .line 52
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    if-eqz p3, :cond_3

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    move-object v0, p3

    .line 70
    check-cast v0, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 73
    .line 74
    .line 75
    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_2

    .line 85
    .line 86
    new-instance v1, Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_2
    check-cast v1, Ljava/util/List;

    .line 95
    .line 96
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    .line 115
    .line 116
    move-result p3

    .line 117
    if-eqz p3, :cond_9

    .line 118
    .line 119
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p3

    .line 123
    check-cast p3, Ljava/util/Map$Entry;

    .line 124
    .line 125
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    check-cast p3, Ljava/util/List;

    .line 130
    .line 131
    check-cast p3, Ljava/lang/Iterable;

    .line 132
    .line 133
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_5

    .line 142
    .line 143
    const/4 p3, 0x0

    .line 144
    goto :goto_3

    .line 145
    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_6

    .line 154
    .line 155
    :goto_2
    move-object p3, v0

    .line 156
    goto :goto_3

    .line 157
    :cond_6
    move-object v1, v0

    .line 158
    check-cast v1, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 159
    .line 160
    invoke-virtual {v1}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    :cond_7
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    move-object v4, v3

    .line 169
    check-cast v4, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 170
    .line 171
    invoke-virtual {v4}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 172
    .line 173
    .line 174
    move-result-wide v4

    .line 175
    cmp-long v6, v1, v4

    .line 176
    .line 177
    if-gez v6, :cond_8

    .line 178
    .line 179
    move-object v0, v3

    .line 180
    move-wide v1, v4

    .line 181
    :cond_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    if-nez v3, :cond_7

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :goto_3
    check-cast p3, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 189
    .line 190
    if-eqz p3, :cond_4

    .line 191
    .line 192
    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_9
    new-instance p2, Lcom/changdu/mobovideo/localpush/LocalPushStateStore$pruneRecentPromotionSeries$$inlined$sortedByDescending$2;

    .line 197
    .line 198
    invoke-direct {p2}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore$pruneRecentPromotionSeries$$inlined$sortedByDescending$2;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Ljava/lang/Iterable;

    .line 206
    .line 207
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    return-object p1
.end method

.method public final Wwwwwwwwwwwwww(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_4

    .line 21
    .line 22
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    if-nez v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const-string v4, "seriesId"

    .line 30
    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v7

    .line 37
    const-string v4, "pushedAtMs"

    .line 38
    .line 39
    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    cmp-long v9, v7, v5

    .line 44
    .line 45
    if-lez v9, :cond_3

    .line 46
    .line 47
    cmp-long v5, v3, v5

    .line 48
    .line 49
    if-gtz v5, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    new-instance v5, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 53
    .line 54
    invoke-direct {v5, v7, v8, v3, v4}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;-><init>(JJ)V

    .line 55
    .line 56
    .line 57
    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 v5, 0x2

    .line 64
    const/4 v6, 0x0

    .line 65
    const-wide/16 v3, 0x0

    .line 66
    .line 67
    move-object v1, p0

    .line 68
    invoke-static/range {v1 .. v6}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushStateStore;Ljava/util/List;JILjava/lang/Object;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    return-object p1

    .line 73
    :cond_5
    :goto_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method

.method public final Wwwwwwwwwwwwwwww(J)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    move-wide/from16 v3, p1

    .line 12
    .line 13
    invoke-virtual {v0, v2, v3, v4}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwwwwww(Ljava/util/List;J)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v19

    .line 17
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwww()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eq v2, v3, :cond_0

    .line 30
    .line 31
    const/16 v20, 0x3ff

    .line 32
    .line 33
    const/16 v21, 0x0

    .line 34
    .line 35
    const-wide/16 v2, 0x0

    .line 36
    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    const-wide/16 v6, 0x0

    .line 40
    .line 41
    const-wide/16 v8, 0x0

    .line 42
    .line 43
    const-wide/16 v10, 0x0

    .line 44
    .line 45
    const-wide/16 v12, 0x0

    .line 46
    .line 47
    const-wide/16 v14, 0x0

    .line 48
    .line 49
    const/16 v16, 0x0

    .line 50
    .line 51
    const/16 v17, 0x0

    .line 52
    .line 53
    const/16 v18, 0x0

    .line 54
    .line 55
    invoke-static/range {v1 .. v21}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushState;JJJJJJJIIILjava/util/List;ILjava/lang/Object;)Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Kkkkkkkkkkkkk(Lcom/changdu/mobovideo/localpush/LocalPushState;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    move-object/from16 v1, v19

    .line 63
    .line 64
    check-cast v1, Ljava/lang/Iterable;

    .line 65
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    const/16 v3, 0xa

    .line 69
    .line 70
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    check-cast v3, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/changdu/mobovideo/localpush/PromotionSeriesRecord;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 94
    .line 95
    .line 96
    move-result-wide v3

    .line 97
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    return-object v2
.end method

.method public final Wwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwww(Lcom/changdu/mobovideo/localpush/LocalPushType;)I
    .locals 2
    .param p1    # Lcom/changdu/mobovideo/localpush/LocalPushType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/changdu/mobovideo/localpush/LocalPushStateStore;->Wwwwwwwwww()Lcom/changdu/mobovideo/localpush/LocalPushState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/changdu/mobovideo/localpush/LocalPushStateStore$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    aget p1, v1, p1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p1, v1, :cond_2

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-ne p1, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 28
    .line 29
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwwwww()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_2
    invoke-virtual {v0}, Lcom/changdu/mobovideo/localpush/LocalPushState;->Wwwwwwwwwwwwwwwwwwwwww()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method
