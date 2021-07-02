import consumer from "./consumer"
if(location.pathname.match(/posts/) && location.pathname.match(/\d+/)){
  consumer.subscriptions.create("CommentsChannel", {
    connected() {
      // ActionCableと通信を確立した際にコンソールにインフォメーションを出力
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received(data) {
      const html = `
      <li class="comments_list">
        ${data.comment.text}
        <a class="comment_user" href="users/${data.user.id}">（${data.user.name}）</a>
      </li>
      `  
    
    const comments = document.getElementById("comments_lists")
    comments.insertAdjacentHTML('beforeend', html)
    comments.scrollTop = comments.scrollHeight;
    const commentForm = document.getElementById("comments")
    commentForm.reset()
    }
  })
} 