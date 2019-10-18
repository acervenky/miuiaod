.class public final synthetic Lcom/miui/aod/doze/-$$Lambda$DgbBxhuy1DwvlxGo4f-SvhsmjQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/aod/DozeHost;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/aod/DozeHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/aod/doze/-$$Lambda$DgbBxhuy1DwvlxGo4f-SvhsmjQI;->f$0:Lcom/miui/aod/DozeHost;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/aod/doze/-$$Lambda$DgbBxhuy1DwvlxGo4f-SvhsmjQI;->f$0:Lcom/miui/aod/DozeHost;

    invoke-virtual {p0}, Lcom/miui/aod/DozeHost;->dozeTimeTick()V

    return-void
.end method
