.class Lcom/android/phone/IccDepersonalizationPanel$3;
.super Ljava/lang/Object;
.source "IccDepersonalizationPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/IccDepersonalizationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IccDepersonalizationPanel;


# direct methods
.method constructor <init>(Lcom/android/phone/IccDepersonalizationPanel;)V
    .registers 2
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/phone/IccDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .parameter "v"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {v1}, Lcom/android/phone/IccDepersonalizationPanel;->access$000(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, pin:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 205
    :goto_14
    return-void

    .line 201
    :cond_15
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requesting De-Personalization for subtype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {v3}, Lcom/android/phone/IccDepersonalizationPanel;->access$400(Lcom/android/phone/IccDepersonalizationPanel;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$100(Lcom/android/phone/IccDepersonalizationPanel;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {v1}, Lcom/android/phone/IccDepersonalizationPanel;->access$600(Lcom/android/phone/IccDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/IccDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$400(Lcom/android/phone/IccDepersonalizationPanel;)I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/IccDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    invoke-static {v3}, Lcom/android/phone/IccDepersonalizationPanel;->access$500(Lcom/android/phone/IccDepersonalizationPanel;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/telephony/IccCard;->supplyDepersonalization(Ljava/lang/String;ILandroid/os/Message;)V

    .line 204
    iget-object v1, p0, Lcom/android/phone/IccDepersonalizationPanel$3;->this$0:Lcom/android/phone/IccDepersonalizationPanel;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/IccDepersonalizationPanel;->access$200(Lcom/android/phone/IccDepersonalizationPanel;I)V

    goto :goto_14
.end method
